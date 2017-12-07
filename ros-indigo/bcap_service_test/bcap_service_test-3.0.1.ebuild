# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="b-CAP service test package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/DENSORobot/denso_robot_ros-release/archive/release/indigo/${PN}/3.0.1-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/roscpp
"
DEPEND="${RDEPEND}
	ros-indigo/bcap_service
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
