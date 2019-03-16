// Auto-generated. Do not edit!

// (in-package service_demo.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class GreetingRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.name = null;
      this.task = null;
    }
    else {
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('task')) {
        this.task = initObj.task
      }
      else {
        this.task = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GreetingRequest
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [task]
    bufferOffset = _serializer.int32(obj.task, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GreetingRequest
    let len;
    let data = new GreetingRequest(null);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [task]
    data.task = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.name.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'service_demo/GreetingRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c644ae2ff5a79f108dcc792d42477ebb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string name
    int32 task
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GreetingRequest(null);
    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.task !== undefined) {
      resolved.task = msg.task;
    }
    else {
      resolved.task = 0
    }

    return resolved;
    }
};

class GreetingResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.feedback = null;
    }
    else {
      if (initObj.hasOwnProperty('feedback')) {
        this.feedback = initObj.feedback
      }
      else {
        this.feedback = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GreetingResponse
    // Serialize message field [feedback]
    bufferOffset = _serializer.string(obj.feedback, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GreetingResponse
    let len;
    let data = new GreetingResponse(null);
    // Deserialize message field [feedback]
    data.feedback = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.feedback.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'service_demo/GreetingResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c14cdf907e5c7c7fd47292add15660f0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string feedback
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GreetingResponse(null);
    if (msg.feedback !== undefined) {
      resolved.feedback = msg.feedback;
    }
    else {
      resolved.feedback = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: GreetingRequest,
  Response: GreetingResponse,
  md5sum() { return '5309a9e5d2c51de0b951c788813a1519'; },
  datatype() { return 'service_demo/Greeting'; }
};
