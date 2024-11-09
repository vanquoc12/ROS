// Auto-generated. Do not edit!

// (in-package waypoints.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class Delete_WpRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.wp_name = null;
    }
    else {
      if (initObj.hasOwnProperty('wp_name')) {
        this.wp_name = initObj.wp_name
      }
      else {
        this.wp_name = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Delete_WpRequest
    // Serialize message field [wp_name]
    bufferOffset = _serializer.string(obj.wp_name, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Delete_WpRequest
    let len;
    let data = new Delete_WpRequest(null);
    // Deserialize message field [wp_name]
    data.wp_name = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.wp_name);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'waypoints/Delete_WpRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a284afe871109adda1de76fc331e5a94';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string  wp_name               
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Delete_WpRequest(null);
    if (msg.wp_name !== undefined) {
      resolved.wp_name = msg.wp_name;
    }
    else {
      resolved.wp_name = ''
    }

    return resolved;
    }
};

class Delete_WpResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Delete_WpResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Delete_WpResponse
    let len;
    let data = new Delete_WpResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'waypoints/Delete_WpResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '358e233cde0c8a8bcfea4ce193f8fc15';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success     
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Delete_WpResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    return resolved;
    }
};

module.exports = {
  Request: Delete_WpRequest,
  Response: Delete_WpResponse,
  md5sum() { return '586d8f413500dd2c0010cf7506a3071c'; },
  datatype() { return 'waypoints/Delete_Wp'; }
};
