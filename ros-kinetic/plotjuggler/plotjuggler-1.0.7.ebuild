# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

inherit cmake-utils eutils

DESCRIPTION="PlotJuggler: juggle with data"
HOMEPAGE="https://github.com/facontidavide/PlotJuggler"
SRC_URI="https://github.com/facontidavide/plotjuggler-release/archive/release/kinetic/plotjuggler/1.0.7-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="LGPL-3"

KEYWORDS="x86 amd64 arm ~arm64"

RDEPEND="
    ros-kinetic/ros_type_introspection
    ros-kinetic/rosbag
    ros-kinetic/rosbag_storage
    ros-kinetic/roscpp
    ros-kinetic/roscpp_serialization
    ros-kinetic/rostime
    ros-kinetic/topic_tools
    sys-devel/binutils
    dev-qt/qtsvg:5
    dev-qt/qtcore:5
"
DEPEND="${RDEPEND}
    ros-kinetic/catkin
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
        -DPYTHON_INSTALL_DIR=lib64/site-packages/python3.5
        -DPYTHON_EXECUTABLE=/usr/bin/ros-python
        -DCATKIN_BUILD_BINARY_PACKAGE=1
     )
    cmake-utils_src_configure
}

src_install() {
    cd ${WORKDIR}/${P}_build
    make install || die
}