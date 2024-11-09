// Auto-generated. Do not edit!

// (in-package multipoint_navigation_receiver.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class obstacle_srvRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.positionx = null;
      this.positiony = null;
    }
    else {
      if (initObj.hasOwnProperty('positionx')) {
        this.positionx = initObj.positionx
      }
      else {
        this.positionx = 0.0;
      }
      if (initObj.hasOwnProperty('positiony')) {
        this.positiony = initObj.positiony
      }
      else {
        this.positiony = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type obstacle_srvRequest
    // Serialize message field [positionx]
    bufferOffset = _serializer.float32(obj.positionx, buffer, bufferOffset);
    // Serialize message field [positiony]
    bufferOffset = _serializer.float32(obj.positiony, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type obstacle_srvRequest
    let len;
    let data = new obstacle_srvRequest(null);
    // Deserialize message field [positionx]
    data.positionx = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [positiony]
    data.positiony = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'multipoint_navigation_receiver/obstacle_srvRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ddaa0386aacc9ac3585da309c04e9cdf';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 positionx
    float32 positiony
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new obstacle_srvRequest(null);
    if (msg.positionx !== undefined) {
      resolved.positionx = msg.positionx;
    }
    else {
      resolved.positionx = 0.0
    }

    if (msg.positiony !== undefined) {
      resolved.positiony = msg.positiony;
    }
    else {
      resolved.positiony = 0.0
    }

    return resolved;
    }
};

class obstacle_srvResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.obstacle_probability = null;
    }
    else {
      if (initObj.hasOwnProperty('obstacle_probability')) {
        this.obstacle_probability = initObj.obstacle_probability
      }
      else {
        this.obstacle_probability = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type obstacle_srvResponse
    // Serialize message field [obstacle_probability]
    bufferOffset = _serializer.int8(obj.obstacle_probability, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type obstacle_srvResponse
    let len;
    let data = new obstacle_srvResponse(null);
    // Deserialize message field [obstacle_probability]
    data.obstacle_probability = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'multipoint_navigation_receiver/obstacle_srvResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7288de76ecf71aa93cdc77a04c0dcff6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int8 obstacle_probability 
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new obstacle_srvResponse(null);
    if (msg.obstacle_probability !== undefined) {
      resolved.obstacle_probability = msg.obstacle_probability;
    }
    else {
      resolved.obstacle_probability = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: obstacle_srvRequest,
  Response: obstacle_srvResponse,
  md5sum() { return 'cde20407033a78fab80407a8d3277159'; },
  datatype() { return 'multipoint_navigation_receiver/obstacle_srv'; }
};
