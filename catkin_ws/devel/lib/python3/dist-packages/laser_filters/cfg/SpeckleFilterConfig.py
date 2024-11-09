## *********************************************************
##
## File autogenerated for the laser_filters package
## by the dynamic_reconfigure package.
## Please do not edit.
##
## ********************************************************/

from dynamic_reconfigure.encoding import extract_params

inf = float('inf')

config_description = {'name': 'Default', 'type': '', 'state': True, 'cstate': 'true', 'id': 0, 'parent': 0, 'parameters': [{'name': 'filter_type', 'type': 'int', 'default': 0, 'level': 0, 'description': 'Filtering method selection', 'min': 0, 'max': 1, 'srcline': 291, 'srcfile': '/opt/ros/noetic/lib/python3/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'edit_method': "{'enum': [{'name': 'Distance', 'type': 'int', 'value': 0, 'srcline': 45, 'srcfile': '/home/cannot/catkin_ws/src/laser_filters/cfg/SpeckleFilter.cfg', 'description': 'Range based filtering (distance between consecutive points)', 'ctype': 'int', 'cconsttype': 'const int'}, {'name': 'RadiusOutlier', 'type': 'int', 'value': 1, 'srcline': 46, 'srcfile': '/home/cannot/catkin_ws/src/laser_filters/cfg/SpeckleFilter.cfg', 'description': 'Euclidean filtering based on radius outlier search', 'ctype': 'int', 'cconsttype': 'const int'}], 'enum_description': 'Enum to select the filtering method'}", 'ctype': 'int', 'cconsttype': 'const int'}, {'name': 'max_range', 'type': 'double', 'default': 2.0, 'level': 0, 'description': 'Only ranges smaller than this range are taken into account', 'min': 0.0, 'max': 100.0, 'srcline': 291, 'srcfile': '/opt/ros/noetic/lib/python3/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'edit_method': '', 'ctype': 'double', 'cconsttype': 'const double'}, {'name': 'max_range_difference', 'type': 'double', 'default': 0.4, 'level': 0, 'description': 'Distance: max distance between consecutive points - RadiusOutlier: max distance between points', 'min': 0.0, 'max': 100.0, 'srcline': 291, 'srcfile': '/opt/ros/noetic/lib/python3/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'edit_method': '', 'ctype': 'double', 'cconsttype': 'const double'}, {'name': 'filter_window', 'type': 'int', 'default': 4, 'level': 0, 'description': 'Minimum number of neighbors', 'min': 0, 'max': 100, 'srcline': 291, 'srcfile': '/opt/ros/noetic/lib/python3/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'edit_method': '', 'ctype': 'int', 'cconsttype': 'const int'}], 'groups': [], 'srcline': 246, 'srcfile': '/opt/ros/noetic/lib/python3/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'class': 'DEFAULT', 'parentclass': '', 'parentname': 'Default', 'field': 'default', 'upper': 'DEFAULT', 'lower': 'groups'}

min = {}
max = {}
defaults = {}
level = {}
type = {}
all_level = 0

#def extract_params(config):
#    params = []
#    params.extend(config['parameters'])
#    for group in config['groups']:
#        params.extend(extract_params(group))
#    return params

for param in extract_params(config_description):
    min[param['name']] = param['min']
    max[param['name']] = param['max']
    defaults[param['name']] = param['default']
    level[param['name']] = param['level']
    type[param['name']] = param['type']
    all_level = all_level | param['level']

SpeckleFilter_Distance = 0
SpeckleFilter_RadiusOutlier = 1
