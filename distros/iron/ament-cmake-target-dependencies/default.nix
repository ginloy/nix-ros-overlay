
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-include-directories, ament-cmake-libraries }:
buildRosPackage {
  pname = "ros-iron-ament-cmake-target-dependencies";
  version = "2.0.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/iron/ament_cmake_target_dependencies/2.0.6-1.tar.gz";
    name = "2.0.6-1.tar.gz";
    sha256 = "809d8a8054c2abd1b4c6a99ab18e8b21a312b1e005d2bf9eeb90b6265c5a08de";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-core ament-cmake-include-directories ament-cmake-libraries ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-include-directories ament-cmake-libraries ];

  meta = {
    description = "The ability to add definitions, include directories and libraries of a package to a target in the ament buildsystem in CMake.";
    license = with lib.licenses; [ asl20 ];
  };
}
