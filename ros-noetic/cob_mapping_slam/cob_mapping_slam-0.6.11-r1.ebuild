# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="cob_mapping_slam holds launch files for running SLAM using the <a href=\"ht[...]"
HOMEPAGE="http://ros.org/wiki/cob_mapping_slam"
SRC_URI="https://github.com/ipa320/cob_navigation-release/archive/release/noetic/${PN}/0.6.11-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/cob_navigation_global
	ros-noetic/gmapping
	test? ( ros-noetic/cob_supported_robots )
	test? ( ros-noetic/roslaunch )
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
