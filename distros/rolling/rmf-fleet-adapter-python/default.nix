
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-pytest, pybind11-json-vendor, pybind11-vendor, rclpy, rmf-fleet-adapter }:
buildRosPackage {
  pname = "ros-rolling-rmf-fleet-adapter-python";
  version = "2.7.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_ros2-release/archive/release/rolling/rmf_fleet_adapter_python/2.7.1-1.tar.gz";
    name = "2.7.1-1.tar.gz";
    sha256 = "e4f7712b31cd8d32dc34e00d87761df64e3422e69197c80110036306daed243f";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-pytest ];
  propagatedBuildInputs = [ pybind11-json-vendor pybind11-vendor rclpy rmf-fleet-adapter ];

  meta = {
    description = "Python bindings for the rmf_fleet_adapter";
    license = with lib.licenses; [ asl20 ];
  };
}
