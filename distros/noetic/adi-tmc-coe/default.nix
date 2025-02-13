
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ethercat-grant, geometry-msgs, message-generation, message-runtime, roscpp, roscpp-serialization, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-adi-tmc-coe";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/adi_tmcl_coe-release/archive/release/noetic/adi_tmc_coe/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "e15522a8d1124851fb6575d376499a353387ef5b99fd5d4d00383d9b16ca42eb";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ ethercat-grant geometry-msgs message-runtime roscpp roscpp-serialization std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "The adi_tmc_coe package";
    license = with lib.licenses; [ bsd3 ];
  };
}
