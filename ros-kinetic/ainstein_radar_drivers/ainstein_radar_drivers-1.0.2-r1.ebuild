# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="ROS drivers \(interfaces\) and nodes for Ainstein radars."
HOMEPAGE="https://ainstein.ai/"
SRC_URI="https://github.com/AinsteinAI/ainstein_radar-release/archive/release/kinetic/${PN}/1.0.2-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/ainstein_radar_msgs
	ros-kinetic/can_msgs
	ros-kinetic/nodelet
	ros-kinetic/pcl_ros
	ros-kinetic/roscpp
	ros-kinetic/socketcan_bridge
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
