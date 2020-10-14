// Auto-generated. Do not edit!

// (in-package webots_ros.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class node_get_number_of_contact_pointsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.node = null;
    }
    else {
      if (initObj.hasOwnProperty('node')) {
        this.node = initObj.node
      }
      else {
        this.node = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type node_get_number_of_contact_pointsRequest
    // Serialize message field [node]
    bufferOffset = _serializer.uint64(obj.node, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type node_get_number_of_contact_pointsRequest
    let len;
    let data = new node_get_number_of_contact_pointsRequest(null);
    // Deserialize message field [node]
    data.node = _deserializer.uint64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'webots_ros/node_get_number_of_contact_pointsRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '364f76d0680a5475664d98abd705f036';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint64 node
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new node_get_number_of_contact_pointsRequest(null);
    if (msg.node !== undefined) {
      resolved.node = msg.node;
    }
    else {
      resolved.node = 0
    }

    return resolved;
    }
};

class node_get_number_of_contact_pointsResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.numberOfContactPoints = null;
    }
    else {
      if (initObj.hasOwnProperty('numberOfContactPoints')) {
        this.numberOfContactPoints = initObj.numberOfContactPoints
      }
      else {
        this.numberOfContactPoints = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type node_get_number_of_contact_pointsResponse
    // Serialize message field [numberOfContactPoints]
    bufferOffset = _serializer.int32(obj.numberOfContactPoints, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type node_get_number_of_contact_pointsResponse
    let len;
    let data = new node_get_number_of_contact_pointsResponse(null);
    // Deserialize message field [numberOfContactPoints]
    data.numberOfContactPoints = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'webots_ros/node_get_number_of_contact_pointsResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2614f5acd0e58fdc4bc77a1795306071';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 numberOfContactPoints
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new node_get_number_of_contact_pointsResponse(null);
    if (msg.numberOfContactPoints !== undefined) {
      resolved.numberOfContactPoints = msg.numberOfContactPoints;
    }
    else {
      resolved.numberOfContactPoints = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: node_get_number_of_contact_pointsRequest,
  Response: node_get_number_of_contact_pointsResponse,
  md5sum() { return 'b976c7d31b3cf4035732805a489f5d01'; },
  datatype() { return 'webots_ros/node_get_number_of_contact_points'; }
};
