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

class RobotGetAllDAOutputRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RobotGetAllDAOutputRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RobotGetAllDAOutputRequest
    let len;
    let data = new RobotGetAllDAOutputRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'cgx_driver/RobotGetAllDAOutputRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # RobotGetAllDAOutput.srv
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RobotGetAllDAOutputRequest(null);
    return resolved;
    }
};

class RobotGetAllDAOutputResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.controllerDO = null;
      this.controllerCO = null;
      this.controllerAO = null;
      this.toolDO = null;
      this.ret = null;
      this.message = null;
    }
    else {
      if (initObj.hasOwnProperty('controllerDO')) {
        this.controllerDO = initObj.controllerDO
      }
      else {
        this.controllerDO = new Array(8).fill(0);
      }
      if (initObj.hasOwnProperty('controllerCO')) {
        this.controllerCO = initObj.controllerCO
      }
      else {
        this.controllerCO = new Array(8).fill(0);
      }
      if (initObj.hasOwnProperty('controllerAO')) {
        this.controllerAO = initObj.controllerAO
      }
      else {
        this.controllerAO = new Array(1).fill(0);
      }
      if (initObj.hasOwnProperty('toolDO')) {
        this.toolDO = initObj.toolDO
      }
      else {
        this.toolDO = new Array(2).fill(0);
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
    // Serializes a message object of type RobotGetAllDAOutputResponse
    // Check that the constant length array field [controllerDO] has the right length
    if (obj.controllerDO.length !== 8) {
      throw new Error('Unable to serialize array field controllerDO - length must be 8')
    }
    // Serialize message field [controllerDO]
    bufferOffset = _arraySerializer.bool(obj.controllerDO, buffer, bufferOffset, 8);
    // Check that the constant length array field [controllerCO] has the right length
    if (obj.controllerCO.length !== 8) {
      throw new Error('Unable to serialize array field controllerCO - length must be 8')
    }
    // Serialize message field [controllerCO]
    bufferOffset = _arraySerializer.bool(obj.controllerCO, buffer, bufferOffset, 8);
    // Check that the constant length array field [controllerAO] has the right length
    if (obj.controllerAO.length !== 1) {
      throw new Error('Unable to serialize array field controllerAO - length must be 1')
    }
    // Serialize message field [controllerAO]
    bufferOffset = _arraySerializer.float32(obj.controllerAO, buffer, bufferOffset, 1);
    // Check that the constant length array field [toolDO] has the right length
    if (obj.toolDO.length !== 2) {
      throw new Error('Unable to serialize array field toolDO - length must be 2')
    }
    // Serialize message field [toolDO]
    bufferOffset = _arraySerializer.bool(obj.toolDO, buffer, bufferOffset, 2);
    // Serialize message field [ret]
    bufferOffset = _serializer.int16(obj.ret, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RobotGetAllDAOutputResponse
    let len;
    let data = new RobotGetAllDAOutputResponse(null);
    // Deserialize message field [controllerDO]
    data.controllerDO = _arrayDeserializer.bool(buffer, bufferOffset, 8)
    // Deserialize message field [controllerCO]
    data.controllerCO = _arrayDeserializer.bool(buffer, bufferOffset, 8)
    // Deserialize message field [controllerAO]
    data.controllerAO = _arrayDeserializer.float32(buffer, bufferOffset, 1)
    // Deserialize message field [toolDO]
    data.toolDO = _arrayDeserializer.bool(buffer, bufferOffset, 2)
    // Deserialize message field [ret]
    data.ret = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.message);
    return length + 28;
  }

  static datatype() {
    // Returns string type for a service object
    return 'cgx_driver/RobotGetAllDAOutputResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fdb3ecd52fd607089bccc8ca9c27eda0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool[8] controllerDO
    bool[8] controllerCO
    float32[1] controllerAO
    bool[2] toolDO
    int16 ret
    string message
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RobotGetAllDAOutputResponse(null);
    if (msg.controllerDO !== undefined) {
      resolved.controllerDO = msg.controllerDO;
    }
    else {
      resolved.controllerDO = new Array(8).fill(0)
    }

    if (msg.controllerCO !== undefined) {
      resolved.controllerCO = msg.controllerCO;
    }
    else {
      resolved.controllerCO = new Array(8).fill(0)
    }

    if (msg.controllerAO !== undefined) {
      resolved.controllerAO = msg.controllerAO;
    }
    else {
      resolved.controllerAO = new Array(1).fill(0)
    }

    if (msg.toolDO !== undefined) {
      resolved.toolDO = msg.toolDO;
    }
    else {
      resolved.toolDO = new Array(2).fill(0)
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
  Request: RobotGetAllDAOutputRequest,
  Response: RobotGetAllDAOutputResponse,
  md5sum() { return 'fdb3ecd52fd607089bccc8ca9c27eda0'; },
  datatype() { return 'cgx_driver/RobotGetAllDAOutput'; }
};
