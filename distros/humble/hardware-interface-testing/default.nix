
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, control-msgs, hardware-interface, lifecycle-msgs, pluginlib, rclcpp-lifecycle, ros2-control-test-assets }:
buildRosPackage {
  pname = "ros-humble-hardware-interface-testing";
  version = "2.43.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_control-release/archive/release/humble/hardware_interface_testing/2.43.0-1.tar.gz";
    name = "2.43.0-1.tar.gz";
    sha256 = "177e93bc906117b78babe3cccfd35d46e7ff9b3be739b0acfcaec0f415d9c13e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gmock ];
  propagatedBuildInputs = [ control-msgs hardware-interface lifecycle-msgs pluginlib rclcpp-lifecycle ros2-control-test-assets ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ros2_control hardware interface testing";
    license = with lib.licenses; [ asl20 ];
  };
}
