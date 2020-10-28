# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The handeye package"
HOMEPAGE="http://wiki.ros.org/handeye"
SRC_URI="https://github.com/crigroup/${PN}-release/archive/release/noetic/${PN}/0.1.2-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/baldor
	ros-noetic/criutils
	ros-noetic/geometry_msgs
	ros-noetic/message_runtime
	ros-noetic/std_msgs
	test? ( ros-noetic/rostest )
	virtual/python-enum34
	dev-python/matplotlib
	dev-python/numpy
	sci-libs/scipy
	dev-python/matplotlib
	dev-python/numpy
	sci-libs/scipy
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/message_generation
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
