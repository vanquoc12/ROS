#include <ros/ros.h>
#include <tf/transform_broadcaster.h>
#include <nav_msgs/Odometry.h>
#include <geometry_msgs/Twist.h>
#include <geometry_msgs/Vector3Stamped.h>

double vx=0.0;
double vy=0.0;
double vth=0.0;
double odom_kv=1.0;
double odom_kth=1.0;
double odom_vx_positive = 1.0; 
double odom_vx_negative = 1.0; 
double odom_vy_positive = 1.0; 
double odom_vy_negative = 1.0; 
double odom_vth_positive = 1.135; 
double odom_vth_negative = 1.135; 

int receive_flag=0;

void roverOdomCallback(const geometry_msgs::Vector3Stamped::ConstPtr&rover_odom){

    if (rover_odom->vector.x > 0) {
        vx = rover_odom->vector.x * odom_vx_positive;
    } else {
        vx = rover_odom->vector.x * odom_vx_negative;
    }

    if (rover_odom->vector.y > 0) {
        vy = rover_odom->vector.y * odom_vy_positive;
    } else {
        vy = rover_odom->vector.y * odom_vy_negative;
    }

    if (rover_odom->vector.z > 0) {
        vth = rover_odom->vector.z * odom_vth_positive;
    } else {
        vth = rover_odom->vector.z * odom_vth_negative;
    }

    receive_flag = 1;
}

int main(int argc, char**argv){
 ros::init(argc,argv,"odometry_publisher");

 ros::NodeHandle n;
 ros::Publisher odom_pub = n.advertise<nav_msgs::Odometry>("odom", 50);
 ros::Subscriber odom_sub = n.subscribe("/speed", 50, roverOdomCallback);
 tf::TransformBroadcaster odom_broadcaster;

 //get params
 ros::param::param<double>("~odom_kv", odom_kv, 1.0);
 ros::param::param<double>("~odom_kth", odom_kth, 1.0);
 ros::param::param<double>("~odom_vx_positive", odom_vx_positive, 1.0);
 ros::param::param<double>("~odom_vx_negative", odom_vx_negative, 1.0);
 ros::param::param<double>("~odom_vy_positive", odom_vy_positive, 1.0);
 ros::param::param<double>("~odom_vy_negative", odom_vy_negative, 1.0);
 ros::param::param<double>("~odom_vth_positive", odom_vth_positive, 1.0);
 ros::param::param<double>("~odom_vth_negative", odom_vth_negative, 1.0);

 double x= 0.0;
 double y= 0.0;
 double th= 0.0;
 
 ros::Time current_time, last_time;
 current_time = ros::Time::now();
 last_time = ros::Time::now();

 ros::Rate r(100);
 while(n.ok()){

	ros::spinOnce();
	current_time = ros::Time::now();

	double dt = (current_time - last_time).toSec();
	double delta_x = (vx * cos(th) - vy * sin(th)) * dt; 
	double delta_y = (vx * sin(th) + vy * cos(th)) * dt;
	double delta_th = vth * dt;

	x += delta_x;
	y += delta_y;
	th += delta_th;

	geometry_msgs::Quaternion odom_quat = tf::createQuaternionMsgFromYaw(th);
	
	geometry_msgs::TransformStamped odom_trans;
	odom_trans.header.stamp = current_time;
	odom_trans.header.frame_id = "odom";
	odom_trans.child_frame_id = "base_link";	 
		
	odom_trans.transform.translation.x = x;
	odom_trans.transform.translation.y = y;
	odom_trans.transform.translation.z = 0.0;
	odom_trans.transform.rotation = odom_quat;

	odom_broadcaster.sendTransform(odom_trans);

	nav_msgs::Odometry odom;
	odom.header.stamp = current_time;
	odom.header.frame_id = "odom";
	
	odom.pose.pose.position.x = x;
	odom.pose.pose.position.y = y;
	odom.pose.pose.position.z = 0.0;
	odom.pose.pose.orientation = odom_quat;

	odom.child_frame_id = "base_link";
	odom.twist.twist.linear.x = vx;
	odom.twist.twist.linear.y = vy;
	odom.twist.twist.angular.z = vth;

	odom_pub.publish(odom);
	
	last_time = current_time;
	r.sleep();
     }
}
