
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core }:
buildRosPackage {
  pname = "ros-iron-ament-cmake-libraries";
  version = "2.0.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/iron/ament_cmake_libraries/2.0.6-1.tar.gz";
    name = "2.0.6-1.tar.gz";
    sha256 = "546d9c3e17ac5d33fecc7bd15d469685a161c4032e8d3c574b1fb7ccec6b0227";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-core ];
  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = "The functionality to deduplicate libraries in the ament buildsystem in CMake.";
    license = with lib.licenses; [ asl20 ];
  };
}
