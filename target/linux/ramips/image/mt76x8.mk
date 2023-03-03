#
# MT76x8 Profiles
#

include ./common-tp-link.mk

DEFAULT_SOC := mt7628an

define Device/tl-wr840n-v6.2
  $(Device/tplink)
  IMAGE_SIZE := 3968k
  DEVICE_MODEL := TL-WR840N
  DEVICE_VARIANT := v6.2
  TPLINK_FLASHLAYOUT := 4MLmtk
  TPLINK_HWID := 0x08400006
  TPLINK_HWREVADD := 0x7
  SUPPORTED_DEVICES += tplink,tl-wr840n-v6.2
  IMAGES := sysupgrade.bin tftp-recovery.bin
  IMAGE/tftp-recovery.bin := pad-extra 64k | $$(IMAGE/factory.bin)
  DEFAULT := n
endef
TARGET_DEVICES += tl-wr840n-v6.2