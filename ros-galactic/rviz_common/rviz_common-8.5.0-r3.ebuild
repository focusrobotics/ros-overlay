# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="Common rviz API, used by rviz plugins and applications."
HOMEPAGE="https://github.com/ros2/rviz/blob/ros2/README.md"
SRC_URI="https://github.com/ros2-gbp/rviz-release/archive/release/galactic/${PN}/8.5.0-3.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-galactic/geometry_msgs
	ros-galactic/message_filters
	ros-galactic/pluginlib
	ros-galactic/rclcpp
	ros-galactic/resource_retriever
	ros-galactic/rviz_assimp_vendor
	ros-galactic/rviz_ogre_vendor
	ros-galactic/rviz_rendering
	ros-galactic/sensor_msgs
	ros-galactic/std_msgs
	ros-galactic/tf2
	ros-galactic/tf2_geometry_msgs
	ros-galactic/tf2_ros
	ros-galactic/tinyxml2_vendor
	ros-galactic/urdf
	ros-galactic/yaml_cpp_vendor
	test? ( ros-galactic/ament_cmake_cppcheck )
	test? ( ros-galactic/ament_cmake_cpplint )
	test? ( ros-galactic/ament_cmake_gmock )
	test? ( ros-galactic/ament_cmake_gtest )
	test? ( ros-galactic/ament_cmake_lint_cmake )
	test? ( ros-galactic/ament_cmake_uncrustify )
	test? ( ros-galactic/ament_cmake_xmllint )
	test? ( ros-galactic/ament_lint_auto )
	dev-qt/qtcore:5
	dev-qt/qtgui:5
	dev-qt/qtopengl:5
	dev-qt/qtwidgets:5
	dev-qt/qtcore:5
	dev-qt/qtwidgets:5
	dev-qt/qttest:5
"
DEPEND="${RDEPEND}
	ros-galactic/ament_cmake
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
