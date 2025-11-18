
"use strict";

let RobotGetAllDAOutput = require('./RobotGetAllDAOutput.js')
let CgxDriverService = require('./CgxDriverService.js')
let RobotStop = require('./RobotStop.js')
let RobotStateSpeed = require('./RobotStateSpeed.js')
let RobotGetAllDAInput = require('./RobotGetAllDAInput.js')
let RobotControl = require('./RobotControl.js')
let RobotSetAnalogIOState = require('./RobotSetAnalogIOState.js')
let RobotStatePose = require('./RobotStatePose.js')
let RobotStateCurrent = require('./RobotStateCurrent.js')
let RobotGetAnalogIOState = require('./RobotGetAnalogIOState.js')
let RobotGetDigitalIOState = require('./RobotGetDigitalIOState.js')
let RobotSetDigitalIOState = require('./RobotSetDigitalIOState.js')
let RobotMoveCircle = require('./RobotMoveCircle.js')
let RobotStateAcceleration = require('./RobotStateAcceleration.js')

module.exports = {
  RobotGetAllDAOutput: RobotGetAllDAOutput,
  CgxDriverService: CgxDriverService,
  RobotStop: RobotStop,
  RobotStateSpeed: RobotStateSpeed,
  RobotGetAllDAInput: RobotGetAllDAInput,
  RobotControl: RobotControl,
  RobotSetAnalogIOState: RobotSetAnalogIOState,
  RobotStatePose: RobotStatePose,
  RobotStateCurrent: RobotStateCurrent,
  RobotGetAnalogIOState: RobotGetAnalogIOState,
  RobotGetDigitalIOState: RobotGetDigitalIOState,
  RobotSetDigitalIOState: RobotSetDigitalIOState,
  RobotMoveCircle: RobotMoveCircle,
  RobotStateAcceleration: RobotStateAcceleration,
};
