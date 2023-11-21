// Auto-generated. Do not edit!

// (in-package exercice_2.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class charge_status_answer {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.room_id = null;
      this.room_name = null;
      this.status = null;
    }
    else {
      if (initObj.hasOwnProperty('room_id')) {
        this.room_id = initObj.room_id
      }
      else {
        this.room_id = 0;
      }
      if (initObj.hasOwnProperty('room_name')) {
        this.room_name = initObj.room_name
      }
      else {
        this.room_name = '';
      }
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type charge_status_answer
    // Serialize message field [room_id]
    bufferOffset = _serializer.int32(obj.room_id, buffer, bufferOffset);
    // Serialize message field [room_name]
    bufferOffset = _serializer.string(obj.room_name, buffer, bufferOffset);
    // Serialize message field [status]
    bufferOffset = _serializer.int32(obj.status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type charge_status_answer
    let len;
    let data = new charge_status_answer(null);
    // Deserialize message field [room_id]
    data.room_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [room_name]
    data.room_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [status]
    data.status = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.room_name);
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'exercice_2/charge_status_answer';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7f216c29efbe9e32fff125752f06801c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 room_id
    string room_name
    int32 status
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new charge_status_answer(null);
    if (msg.room_id !== undefined) {
      resolved.room_id = msg.room_id;
    }
    else {
      resolved.room_id = 0
    }

    if (msg.room_name !== undefined) {
      resolved.room_name = msg.room_name;
    }
    else {
      resolved.room_name = ''
    }

    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = 0
    }

    return resolved;
    }
};

module.exports = charge_status_answer;
