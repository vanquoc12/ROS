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

class Run_WpRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.wp_name = null;
      this.gr_name = null;
      this.loop = null;
      this.index = null;
    }
    else {
      if (initObj.hasOwnProperty('wp_name')) {
        this.wp_name = initObj.wp_name
      }
      else {
        this.wp_name = '';
      }
      if (initObj.hasOwnProperty('gr_name')) {
        this.gr_name = initObj.gr_name
      }
      else {
        this.gr_name = '';
      }
      if (initObj.hasOwnProperty('loop')) {
        this.loop = initObj.loop
      }
      else {
        this.loop = false;
      }
      if (initObj.hasOwnProperty('index')) {
        this.index = initObj.index
      }
      else {
        this.index = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Run_WpRequest
    // Serialize message field [wp_name]
    bufferOffset = _serializer.string(obj.wp_name, buffer, bufferOffset);
    // Serialize message field [gr_name]
    bufferOffset = _serializer.string(obj.gr_name, buffer, bufferOffset);
    // Serialize message field [loop]
    bufferOffset = _serializer.bool(obj.loop, buffer, bufferOffset);
    // Serialize message field [index]
    bufferOffset = _serializer.int16(obj.index, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Run_WpRequest
    let len;
    let data = new Run_WpRequest(null);
    // Deserialize message field [wp_name]
    data.wp_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [gr_name]
    data.gr_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [loop]
    data.loop = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [index]
    data.index = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.wp_name);
    length += _getByteLength(object.gr_name);
    return length + 11;
  }

  static datatype() {
    // Returns string type for a service object
    return 'waypoints/Run_WpRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '604bad90bb13db0cba7fd20abed2fc30';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string  wp_name
    string  gr_name
    bool    loop
    int16   index         
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Run_WpRequest(null);
    if (msg.wp_name !== undefined) {
      resolved.wp_name = msg.wp_name;
    }
    else {
      resolved.wp_name = ''
    }

    if (msg.gr_name !== undefined) {
      resolved.gr_name = msg.gr_name;
    }
    else {
      resolved.gr_name = ''
    }

    if (msg.loop !== undefined) {
      resolved.loop = msg.loop;
    }
    else {
      resolved.loop = false
    }

    if (msg.index !== undefined) {
      resolved.index = msg.index;
    }
    else {
      resolved.index = 0
    }

    return resolved;
    }
};

class Run_WpResponse {
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
    // Serializes a message object of type Run_WpResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Run_WpResponse
    let len;
    let data = new Run_WpResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'waypoints/Run_WpResponse';
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
    const resolved = new Run_WpResponse(null);
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
  Request: Run_WpRequest,
  Response: Run_WpResponse,
  md5sum() { return 'be247a9e980f86ec8f691ab70288ad8a'; },
  datatype() { return 'waypoints/Run_Wp'; }
};
