# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6
inherit multilib-build

DESCRIPTION="Virtual for libusb"
SLOT="0"
KEYWORDS="alpha amd64 arm arm64 hppa ia64 m68k ~mips ppc ppc64 s390 sh sparc x86 ~amd64-fbsd ~x86-fbsd ~amd64-linux ~x86-linux ~ppc-macos ~x64-macos ~x86-macos"

RDEPEND="|| ( >=dev-libs/libusb-compat-0.1.5-r2[${MULTILIB_USEDEP}] >=sys-freebsd/freebsd-lib-9.1-r11[usb,${MULTILIB_USEDEP}] dev-libs/libusb:0 )"
