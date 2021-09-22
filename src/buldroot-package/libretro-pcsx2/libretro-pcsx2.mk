################################################################################
#
# libretro-pcsx2
#
################################################################################

# Version.: Commits on Sep 22, 2021
LIBRETRO_PCSX2_VERSION = 75f2e861eaf206739c1295d8aab3b001c2870e94
LIBRETRO_PCSX2_SITE = https://github.com/libretro/pcsx2.git
LIBRETRO_PCSX2_SITE_METHOD = git
LIBRETRO_PCSX2_GIT_SUBMODULES = YES
LIBRETRO_PCSX2_LICENSE = GPLv2
LIBRETRO_PCSX2_DEPENDENCIES = retroarch libaio xz
LIBRETRO_PCSX2_SUPPORTS_IN_SOURCE_BUILD = NO

LIBRETRO_PCSX2_CONF_OPTS += -DCMAKE_BUILD_TYPE=Release
LIBRETRO_PCSX2_CONF_OPTS += -DLIBRETRO=ON
LIBRETRO_PCSX2_CONF_OPTS += -DSDL2_API=ON
LIBRETRO_PCSX2_CONF_OPTS += -DDISABLE_PCSX2_WRAPPER=ON
LIBRETRO_PCSX2_CONF_OPTS += -DPACKAGE_MODE=OFF
LIBRETRO_PCSX2_CONF_OPTS += -DBUILD_SHARED_LIBS=OFF
LIBRETRO_PCSX2_CONF_OPTS += -DENABLE_TESTS=OFF
LIBRETRO_PCSX2_CONF_OPTS += -DENABLE_QT=OFF
LIBRETRO_PCSX2_CONF_OPTS += -DDISABLE_ADVANCE_SIMD=OFF
LIBRETRO_PCSX2_CONF_OPTS += -DEXTRA_PLUGINS=ON
LIBRETRO_PCSX2_CONF_OPTS += -DARCH_FLAG=""
LIBRETRO_PCSX2_CONF_OPTS += -DOPTIMIZATION_FLAG="-O3 -msse -msse2 -mfxsr"

define LIBRETRO_PCSX2_INSTALL_TARGET_CMDS
	$(INSTALL) -D $(@D)/buildroot-build/pcsx2/pcsx2_libretro.so \
		$(TARGET_DIR)/usr/lib/libretro/pcsx2_libretro.so
endef

$(eval $(cmake-package))
