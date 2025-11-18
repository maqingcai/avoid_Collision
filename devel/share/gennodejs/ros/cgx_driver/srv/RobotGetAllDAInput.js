// Auto-generated. Do not edit!

// (in-package cgx_driver.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class RobotGetAllDAInputRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RobotGetAllDAInputRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RobotGetAllDAInputRequest
    let len;
    let data = new RobotGetAllDAInputRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'cgx_driver/RobotGetAllDAInputRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # RobotGetAllDAInput.srv
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RobotGetAllDAInputRequest(null);
    return resolved;
    }
};

class RobotGetAllDAInputResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.controllerDI = null;
      this.controllerCI = null;
      this.controllerAI = null;
      this.toolDI = null;
      this.toolAI = null;
      this.ret = null;
      this.message = null;
    }
    else {
      if (initObj.hasOwnProperty('controllerDI')) {
        this.controllerDI = initObj.controllerDI
      }
      else {
        this.controllerDI = new Array(8).fill(0);
      }
      if (initObj.hasOwnProperty('controllerCI')) {
        this.controllerCI = initObj.controllerCI
      }
      else {
        this.controllerCI = new Array(8).fill(0);
      }
      if (initObj.hasOwnProperty('controllerAI')) {
        this.controllerAI = initObj.controllerAI
      }
      else {
        this.controllerAI = new Array(3).fill(0);
      }
      if (initObj.hasOwnProperty('toolDI')) {
        this.toolDI = initObj.toolDI
      }
      else {
        this.toolDI = new Array(2).fill(0);
      }
      if (initObj.hasOwnProperty('toolAI')) {
        this.toolAI = initObj.toolAI
      }
      else {
        this.toolAI = new Array(2).fill(0);
      }
      if (initObj.hasOwnProperty('ret')) {
        this.ret = initObj.ret
      }
      else {
        this.ret = 0;
      }
      if (initObj.hasOwnProperty('message')) {
        this.message = initObj.message
      }
      else {
        this.message = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RobotGetAllDAInputResponse
    // Check that the constant length array field [controllerDI] has the right length
    if (obj.controllerDI.length !== 8) {
      throw new Error('Unable to serialize array field controllerDI - length must be 8')
    }
    // Serialize message field [controllerDI]
    bufferOffset = _arraySerializer.bool(obj.controllerDI, buffer, bufferOffset, 8);
    // Check that the constant length array field [controllerCI] has the right length
    if (obj.controllerCI.length !== 8) {
      throw new Error('Unable to serialize array field controllerCI - length must be 8')
    }
    // Serialize message field [controllerCI]
    bufferOffset = _arraySerializer.bool(obj.controllerCI, buffer, bufferOffset, 8);
    // Check that the constant length array field [controllerAI] has the right length
    if (obj.controllerAI.length !== 3) {
      throw new Error('Unable to serialize array field controllerAI - length must be 3')
    }
    // Serialize message field [controllerAI]
    bufferOffset = _arraySerializer.float32(obj.controllerAI, buffer, bufferOffset, 3);
    // Check that the constant length array field [toolDI] has the right length
    if (obj.toolDI.length !== 2) {
      throw new Error('Unable to serialize array field toolDI - length must be 2')
    }
    // Serialize message field [toolDI]
    bufferOffset = _arraySerializer.bool(obj.toolDI, buffer, bufferOffset, 2);
    // Check that the constant length array field [toolAI] has the right length
    if (obj.toolAI.length !== 2) {
      throw new Error('Unable to serialize array field toolAI - length must be 2')
    }
    // Serialize message field [toolAI]
    bufferOffset = _arraySerializer.float32(obj.toolAI, buffer, bufferOffset, 2);
    // Serialize message field [ret]
    bufferOffset = _serializer.int16(obj.ret, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RobotGetAllDAInputResponse
    let len;
    let data = new RobotGetAllDAInputResponse(null);
    // Deserialize message field [controllerDI]
    data.controllerDI = _arrayDeserializer.bool(buffer, bufferOffset, 8)
    // Deserialize message field [controllerCI]
    data.controllerCI = _arrayDeserializer.bool(buffer, bufferOffset, 8)
    // Deserialize message field [controllerAI]
    data.controllerAI = _arrayDeserializer.float32(buffer, bufferOffset, 3)
    // Deserialize message field [toolDI]
    data.toolDI = _arrayDeserializer.bool(buffer, bufferOffset, 2)
    // Deserialize message field [toolAI]
    data.toolAI = _arrayDeserializer.float32(buffer, bufferOffset, 2)
    // Deserialize message field [ret]
    data.ret = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.message);
    return length + 44;
  }

  static datatype() {
    // Returns string type for a service object
    return 'cgx_driver/RobotGetAllDAInputResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cba808cbeaab4420830cd2c51b834403';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool[8] controllerDI
    bool[8] controllerCI
    float32[3] controllerAI
    bool[2] toolDI
    float32[2] toolAI
    int16 ret
    string message
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RobotGetAllDAInputResponse(null);
    if (msg.controllerDI !== undefined) {
      resolved.controllerDI = msg.controllerDI;
    }
    else {
      resolved.controllerDI = new Array(8).fill(0)
    }

    if (msg.controllerCI !== undefined) {
      resolved.controllerCI = msg.controllerCI;
    }
    else {
      resolved.controllerCI = new Array(8).fill(0)
    }

    if (msg.controllerAI !== undefined) {
      resolved.controllerAI = msg.controllerAI;
    }
    else {
      resolved.controllerAI = new Array(3).fill(0)
    }

    if (msg.toolDI !== undefined) {
      resolved.toolDI = msg.toolDI;
    }
    else {
      resolved.toolDI = new Array(2).fill(0)
    }

    if (msg.toolAI !== undefined) {
      resolved.toolAI = msg.toolAI;
    }
    else {
      resolved.toolAI = new Array(2).fill(0)
    }

    if (msg.ret !== undefined) {
      resolved.ret = msg.ret;
    }
    else {
      resolved.ret = 0
    }

    if (msg.message !== undefined) {
      resolved.message = msg.message;
    }
    else {
      resolved.message = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: RobotGetAllDAInputRequest,
  Response: RobotGetAllDAInputResponse,
  md5sum() { return 'cba808cbeaab4420830cd2c51b834403'; },
  datatype() { return 'cgx_driver/RobotGetAllDAInput'; }
};
