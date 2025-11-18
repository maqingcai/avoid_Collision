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

class CgxDriverServiceRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pose = null;
      this.jointpos = null;
      this.speed = null;
      this.acc = null;
      this.coordinate_type = null;
      this.point_trans_type = null;
      this.point_trans_radius = null;
      this.is_block = null;
    }
    else {
      if (initObj.hasOwnProperty('pose')) {
        this.pose = initObj.pose
      }
      else {
        this.pose = [];
      }
      if (initObj.hasOwnProperty('jointpos')) {
        this.jointpos = initObj.jointpos
      }
      else {
        this.jointpos = [];
      }
      if (initObj.hasOwnProperty('speed')) {
        this.speed = initObj.speed
      }
      else {
        this.speed = [];
      }
      if (initObj.hasOwnProperty('acc')) {
        this.acc = initObj.acc
      }
      else {
        this.acc = [];
      }
      if (initObj.hasOwnProperty('coordinate_type')) {
        this.coordinate_type = initObj.coordinate_type
      }
      else {
        this.coordinate_type = '';
      }
      if (initObj.hasOwnProperty('point_trans_type')) {
        this.point_trans_type = initObj.point_trans_type
      }
      else {
        this.point_trans_type = '';
      }
      if (initObj.hasOwnProperty('point_trans_radius')) {
        this.point_trans_radius = initObj.point_trans_radius
      }
      else {
        this.point_trans_radius = 0.0;
      }
      if (initObj.hasOwnProperty('is_block')) {
        this.is_block = initObj.is_block
      }
      else {
        this.is_block = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CgxDriverServiceRequest
    // Serialize message field [pose]
    bufferOffset = _arraySerializer.float32(obj.pose, buffer, bufferOffset, null);
    // Serialize message field [jointpos]
    bufferOffset = _arraySerializer.float32(obj.jointpos, buffer, bufferOffset, null);
    // Serialize message field [speed]
    bufferOffset = _arraySerializer.float32(obj.speed, buffer, bufferOffset, null);
    // Serialize message field [acc]
    bufferOffset = _arraySerializer.float32(obj.acc, buffer, bufferOffset, null);
    // Serialize message field [coordinate_type]
    bufferOffset = _serializer.string(obj.coordinate_type, buffer, bufferOffset);
    // Serialize message field [point_trans_type]
    bufferOffset = _serializer.string(obj.point_trans_type, buffer, bufferOffset);
    // Serialize message field [point_trans_radius]
    bufferOffset = _serializer.float32(obj.point_trans_radius, buffer, bufferOffset);
    // Serialize message field [is_block]
    bufferOffset = _serializer.int16(obj.is_block, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CgxDriverServiceRequest
    let len;
    let data = new CgxDriverServiceRequest(null);
    // Deserialize message field [pose]
    data.pose = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [jointpos]
    data.jointpos = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [speed]
    data.speed = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [acc]
    data.acc = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [coordinate_type]
    data.coordinate_type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [point_trans_type]
    data.point_trans_type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [point_trans_radius]
    data.point_trans_radius = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [is_block]
    data.is_block = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.pose.length;
    length += 4 * object.jointpos.length;
    length += 4 * object.speed.length;
    length += 4 * object.acc.length;
    length += _getByteLength(object.coordinate_type);
    length += _getByteLength(object.point_trans_type);
    return length + 30;
  }

  static datatype() {
    // Returns string type for a service object
    return 'cgx_driver/CgxDriverServiceRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9423d0e42729a481a879e239cf18b382';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # CgxDriverServiceMove.srv
    float32[] pose
    float32[] jointpos
    float32[] speed
    float32[] acc
    string coordinate_type
    string point_trans_type
    float32 point_trans_radius
    int16 is_block
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CgxDriverServiceRequest(null);
    if (msg.pose !== undefined) {
      resolved.pose = msg.pose;
    }
    else {
      resolved.pose = []
    }

    if (msg.jointpos !== undefined) {
      resolved.jointpos = msg.jointpos;
    }
    else {
      resolved.jointpos = []
    }

    if (msg.speed !== undefined) {
      resolved.speed = msg.speed;
    }
    else {
      resolved.speed = []
    }

    if (msg.acc !== undefined) {
      resolved.acc = msg.acc;
    }
    else {
      resolved.acc = []
    }

    if (msg.coordinate_type !== undefined) {
      resolved.coordinate_type = msg.coordinate_type;
    }
    else {
      resolved.coordinate_type = ''
    }

    if (msg.point_trans_type !== undefined) {
      resolved.point_trans_type = msg.point_trans_type;
    }
    else {
      resolved.point_trans_type = ''
    }

    if (msg.point_trans_radius !== undefined) {
      resolved.point_trans_radius = msg.point_trans_radius;
    }
    else {
      resolved.point_trans_radius = 0.0
    }

    if (msg.is_block !== undefined) {
      resolved.is_block = msg.is_block;
    }
    else {
      resolved.is_block = 0
    }

    return resolved;
    }
};

class CgxDriverServiceResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ret = null;
      this.message = null;
    }
    else {
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
    // Serializes a message object of type CgxDriverServiceResponse
    // Serialize message field [ret]
    bufferOffset = _serializer.int16(obj.ret, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CgxDriverServiceResponse
    let len;
    let data = new CgxDriverServiceResponse(null);
    // Deserialize message field [ret]
    data.ret = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.message);
    return length + 6;
  }

  static datatype() {
    // Returns string type for a service object
    return 'cgx_driver/CgxDriverServiceResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '76c68a2c5e109f4d6a4dc1cfc355f405';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int16 ret
    string message
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CgxDriverServiceResponse(null);
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
  Request: CgxDriverServiceRequest,
  Response: CgxDriverServiceResponse,
  md5sum() { return 'f09746e49ae11d9f53a9e2220e8db09a'; },
  datatype() { return 'cgx_driver/CgxDriverService'; }
};
