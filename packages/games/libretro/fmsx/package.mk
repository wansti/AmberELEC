# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2009-2012 Stephan Raue (stephan@openelec.tv)
# Copyright (C) 2020-present AmberELEC (https://github.com/AmberELEC)

PKG_NAME="fmsx"
PKG_VERSION="1360c9ff32b390383567774d01fbe5d6dfcadaa3"
PKG_SHA256="32f235b88629ac3566f845d721e44e4bc334814c0372f034ce4b8153729bcf2d"
PKG_LICENSE="GPLv2"
PKG_SITE="https://github.com/libretro/fmsx-libretro"
PKG_URL="${PKG_SITE}/archive/${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain"
PKG_LONGDESC="Port of fMSX 4.9 to the libretro API."
PKG_TOOLCHAIN="make"

make_target() {
  make
}

makeinstall_target() {
  mkdir -p ${INSTALL}/usr/lib/libretro
  cp fmsx_libretro.so ${INSTALL}/usr/lib/libretro/
}