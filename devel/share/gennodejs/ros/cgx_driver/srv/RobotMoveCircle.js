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

class RobotMoveCircleRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.mid_pose = null;
      this.mid_jointpos = null;
      this.mid_speed = null;
      this.mid_acc = null;
      this.mid_coordinate_type = null;
      this.mid_point_trans_type = null;
      this.end_pose = null;
      this.end_jointpos = null;
      this.end_speed = null;
      this.end_acc = null;
      this.end_coordinate_type = null;
      this.end_point_trans_type = null;
      this.end_is_block = null;
    }
    else {
      if (initObj.hasOwnProperty('mid_pose')) {
        this.mid_pose = initObj.mid_pose
      }
      else {
        this.mid_pose = [];
      }
      if (initObj.hasOwnProperty('mid_jointpos')) {
        this.mid_jointpos = initObj.mid_jointpos
      }
      else {
        this.mid_jointpos = [];
      }
      if (initObj.hasOwnProperty('mid_speed')) {
        this.mid_speed = initObj.mid_speed
      }
      else {
        this.mid_speed = [];
      }
      if (initObj.hasOwnProperty('mid_acc')) {
        this.mid_acc = initObj.mid_acc
      }
      else {
        this.mid_acc = [];
      }
      if (initObj.hasOwnProperty('mid_coordinate_type')) {
        this.mid_coordinate_type = initObj.mid_coordinate_type
      }
      else {
        this.mid_coordinate_type = '';
      }
      if (initObj.hasOwnProperty('mid_point_trans_type')) {
        this.mid_point_trans_type = initObj.mid_point_trans_type
      }
      else {
        this.mid_point_trans_type = '';
      }
      if (initObj.hasOwnProperty('end_pose')) {
        this.end_pose = initObj.end_pose
      }
      else {
        this.end_pose = [];
      }
      if (initObj.hasOwnProperty('end_jointpos')) {
        this.end_jointpos = initObj.end_jointpos
      }
      else {
        this.end_jointpos = [];
      }
      if (initObj.hasOwnProperty('end_speed')) {
        this.end_speed = initObj.end_speed
      }
      else {
        this.end_speed = [];
      }
      if (initObj.hasOwnProperty('end_acc')) {
        this.end_acc = initObj.end_acc
      }
      else {
        this.end_acc = [];
      }
      if (initObj.hasOwnProperty('end_coordinate_type')) {
        this.end_coordinate_type = initObj.end_coordinate_type
      }
      else {
        this.end_coordinate_type = '';
      }
      if (initObj.hasOwnProperty('end_point_trans_type')) {
        this.end_point_trans_type = initObj.end_point_trans_type
      }
      else {
        this.end_point_trans_type = '';
      }
      if (initObj.hasOwnProperty('end_is_block')) {
        this.end_is_block = initObj.end_is_block
      }
      else {
        this.end_is_block = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RobotMoveCircleRequest
    // Serialize message field [mid_pose]
    bufferOffset = _arraySerializer.float32(obj.mid_pose, buffer, bufferOffset, null);
    // Serialize message field [mid_jointpos]
    bufferOffset = _arraySerializer.float32(obj.mid_jointpos, buffer, bufferOffset, null);
    // Serialize message field [mid_speed]
    bufferOffset = _arraySerializer.float32(obj.mid_speed, buffer, bufferOffset, null);
    // Serialize message field [mid_acc]
    bufferOffset = _arraySerializer.float32(obj.mid_acc, buffer, bufferOffset, null);
    // Serialize message field [mid_coordinate_type]
    bufferOffset = _serializer.string(obj.mid_coordinate_type, buffer, bufferOffset);
    // Serialize message field [mid_point_trans_type]
    bufferOffset = _serializer.string(obj.mid_point_trans_type, buffer, bufferOffset);
    // Serialize message field [end_pose]
    bufferOffset = _arraySerializer.float32(obj.end_pose, buffer, bufferOffset, null);
    // Serialize message field [end_jointpos]
    bufferOffset = _arraySerializer.float32(obj.end_jointpos, buffer, bufferOffset, null);
    // Serialize message field [end_speed]
    bufferOffset = _arraySerializer.float32(obj.end_speed, buffer, bufferOffset, null);
    // Serialize message field [end_acc]
    bufferOffset = _arraySerializer.float32(obj.end_acc, buffer, bufferOffset, null);
    // Serialize message field [end_coordinate_type]
    bufferOffset = _serializer.string(obj.end_coordinate_type, buffer, bufferOffset);
    // Serialize message field [end_point_trans_type]
    bufferOffset = _serializer.string(obj.end_point_trans_type, buffer, bufferOffset);
    // Serialize message field [end_is_block]
    bufferOffset = _serializer.int16(obj.end_is_block, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RobotMoveCircleRequest
    let len;
    let data = new RobotMoveCircleRequest(null);
    // Deserialize message field [mid_pose]
    data.mid_pose = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [mid_jointpos]
    data.mid_jointpos = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [mid_speed]
    data.mid_speed = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [mid_acc]
    data.mid_acc = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [mid_coordinate_type]
    data.mid_coordinate_type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [mid_point_trans_type]
    data.mid_point_trans_type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [end_pose]
    data.end_pose = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [end_jointpos]
    data.end_jointpos = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [end_speed]
    data.end_speed = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [end_acc]
    data.end_acc = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [end_coordinate_type]
    data.end_coordinate_type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [end_point_trans_type]
    data.end_point_trans_type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [end_is_block]
    data.end_is_block = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.mid_pose.length;
    length += 4 * object.mid_jointpos.length;
    length += 4 * object.mid_speed.length;
    length += 4 * object.mid_acc.length;
    length += _getByteLength(object.mid_coordinate_type);
    length += _getByteLength(object.mid_point_trans_type);
    length += 4 * object.end_pose.length;
    length += 4 * object.end_jointpos.length;
    length += 4 * object.end_speed.length;
    length += 4 * object.end_acc.length;
    length += _getByteLength(object.end_coordinate_type);
    length += _getByteLength(object.end_point_trans_type);
    return length + 50;
  }

  static datatype() {
    // Returns string type for a service object
    return 'cgx_driver/RobotMoveCircleRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0e534d24ab03721243e3de027b84b534';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # RobotMoveCircle.srv
    float32[] mid_pose
    float32[] mid_jointpos
    float32[] mid_speed
    float32[] mid_acc
    string mid_coordinate_type
    string mid_point_trans_type
    float32[] end_pose
    float32[] end_jointpos
    float32[] end_speed
    float32[] end_acc
    string end_coordinate_type
    string end_point_trans_type
    int16 end_is_block
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RobotMoveCircleRequest(null);
    if (msg.mid_pose !== undefined) {
      resolved.mid_pose = msg.mid_pose;
    }
    else {
      resolved.mid_pose = []
    }

    if (msg.mid_jointpos !== undefined) {
      resolved.mid_jointpos = msg.mid_jointpos;
    }
    else {
      resolved.mid_jointpos = []
    }

    if (msg.mid_speed !== undefined) {
      resolved.mid_speed = msg.mid_speed;
    }
    else {
      resolved.mid_speed = []
    }

    if (msg.mid_acc !== undefined) {
      resolved.mid_acc = msg.mid_acc;
    }
    else {
      resolved.mid_acc = []
    }

    if (msg.mid_coordinate_type !== undefined) {
      resolved.mid_coordinate_type = msg.mid_coordinate_type;
    }
    else {
      resolved.mid_coordinate_type = ''
    }

    if (msg.mid_point_trans_type !== undefined) {
      resolved.mid_point_trans_type = msg.mid_point_trans_type;
    }
    else {
      resolved.mid_point_trans_type = ''
    }

    if (msg.end_pose !== undefined) {
      resolved.end_pose = msg.end_pose;
    }
    else {
      resolved.end_pose = []
    }

    if (msg.end_jointpos !== undefined) {
      resolved.end_jointpos = msg.end_jointpos;
    }
    else {
      resolved.end_jointpos = []
    }

    if (msg.end_speed !== undefined) {
      resolved.end_speed = msg.end_speed;
    }
    else {
      resolved.end_speed = []
    }

    if (msg.end_acc !== undefined) {
      resolved.end_acc = msg.end_acc;
    }
    else {
      resolved.end_acc = []
    }

    if (msg.end_coordinate_type !== undefined) {
      resolved.end_coordinate_type = msg.end_coordinate_type;
    }
    else {
      resolved.end_coordinate_type = ''
    }

    if (msg.end_point_trans_type !== undefined) {
      resolved.end_point_trans_type = msg.end_point_trans_type;
    }
    else {
      resolved.end_point_trans_type = ''
    }

    if (msg.end_is_block !== undefined) {
      resolved.end_is_block = msg.end_is_block;
    }
    else {
      resolved.end_is_block = 0
    }

    return resolved;
    }
};

class RobotMoveCircleResponse {
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
    // Serializes a message object of type RobotMoveCircleResponse
    // Serialize message field [ret]
    bufferOffset = _serializer.int16(obj.ret, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RobotMoveCircleResponse
    let len;
    let data = new RobotMoveCircleResponse(null);
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
    return 'cgx_driver/RobotMoveCircleResponse';
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
    const resolved = new RobotMoveCircleResponse(null);
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
  Request: RobotMoveCircleRequest,
  Response: RobotMoveCircleResponse,
  md5sum() { return 'f04f1ce85f111cec2d880bee47b328ac'; },
  datatype() { return 'cgx_driver/RobotMoveCircle'; }
};
