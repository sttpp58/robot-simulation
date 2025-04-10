// Auto-generated. Do not edit!

// (in-package robot_arm_urdf.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class StepperCommand {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.target_steps = null;
    }
    else {
      if (initObj.hasOwnProperty('target_steps')) {
        this.target_steps = initObj.target_steps
      }
      else {
        this.target_steps = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type StepperCommand
    // Serialize message field [target_steps]
    bufferOffset = _arraySerializer.int32(obj.target_steps, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type StepperCommand
    let len;
    let data = new StepperCommand(null);
    // Deserialize message field [target_steps]
    data.target_steps = _arrayDeserializer.int32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.target_steps.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robot_arm_urdf/StepperCommand';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd72fea468f87b18315af10edfcc7c9bf';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32[] target_steps
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new StepperCommand(null);
    if (msg.target_steps !== undefined) {
      resolved.target_steps = msg.target_steps;
    }
    else {
      resolved.target_steps = []
    }

    return resolved;
    }
};

module.exports = StepperCommand;
