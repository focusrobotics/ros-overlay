# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

inherit cmake-utils eutils

DESCRIPTION="3D visualization tool for ROS."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/rviz-release/archive/release/kinetic/rviz/1.12.10-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="|| ( BSD CC-BY-SA-3.0 )"
KEYWORDS="x86 amd64 arm ~arm64"
PYTHON_DEPEND="3::3.5"

RDEPEND="
    ros-kinetic/geometry_msgs
    ros-kinetic/image_transport
    ros-kinetic/interactive_markers
    ros-kinetic/laser_geometry
    ros-kinetic/map_msgs
    ros-kinetic/media_export
    ros-kinetic/message_filters
    ros-kinetic/nav_msgs
    ros-kinetic/pluginlib
    ros-kinetic/python_qt_binding
    ros-kinetic/resource_retriever
    ros-kinetic/rosbag
    ros-kinetic/rosconsole
    ros-kinetic/roscpp
    ros-kinetic/roslib
    ros-kinetic/rospy
    ros-kinetic/sensor_msgs
    ros-kinetic/std_msgs
    ros-kinetic/std_srvs
    ros-kinetic/tf
    ros-kinetic/urdf
    ros-kinetic/visualization_msgs
    media-libs/assimp
    dev-cpp/eigen
    dev-games/ogre
    dev-qt/qtcore:5
    dev-qt/qtgui:5
    dev-qt/qtopengl:5
    dev-qt/qtwidgets:5
    dev-libs/urdfdom_headers
    virtual/opengl
    dev-libs/tinyxml
    dev-cpp/yaml-cpp
"
DEPEND="${RDEPEND}
    ros-kinetic/catkin
    ros-kinetic/cmake_modules
    media-libs/assimp
    dev-qt/qtopengl:5
    dev-qt/qtcore:5
"

SLOT="0"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_PREFIX="opt/ros/kinetic"

src_unpack() {
    default
    mv *${P}* ${P}
}

src_configure() {
    append-cxxflags "-std=c++11"
    export DEST_SETUP_DIR="/${ROS_PREFIX}"
    local mycmakeargs=(
        -DCMAKE_INSTALL_PREFIX=${D}${ROS_PREFIX}
        -DCMAKE_PREFIX_PATH=/${ROS_PREFIX}
        -DPYTHON_INSTALL_DIR=lib64/python3.5/site-packages
        -DCATKIN_ENABLE_TESTING=OFF
        -DPYTHON_EXECUTABLE=/usr/bin/ros-python-kinetic
        -DCATKIN_BUILD_BINARY_PACKAGE=1
     )
    cmake-utils_src_configure
}

src_install() {
    cd ${WORKDIR}/${P}_build
    make install || die
}
