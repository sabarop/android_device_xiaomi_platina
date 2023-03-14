#
# Copyright (C) 2018-2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from sdm660-common
include device/xiaomi/sdm660-common/BoardConfigCommon.mk

DEVICE_PATH := device/xiaomi/platina

# Assert
TARGET_OTA_ASSERT_DEVICE := platina

# Boot animation
TARGET_SCREEN_HEIGHT := 2280
TARGET_SCREEN_WIDTH := 1080

# Build
BUILD_BROKEN_DUP_RULES := true

# Camera
BOARD_QTI_CAMERA_32BIT_ONLY := true
USE_DEVICE_SPECIFIC_CAMERA := true

# Display
TARGET_SCREEN_DENSITY := 440

# Kernel
TARGET_KERNEL_CONFIG += vendor/xiaomi/platina.config

# Partitions
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3221225472
BOARD_VENDORIMAGE_PARTITION_SIZE := 838860800
BOARD_USES_METADATA_PARTITION := true

# Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Recovery
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/etc/fstab.qcom

# Security patch level
VENDOR_SECURITY_PATCH := $(PLATFORM_SECURITY_PATCH)

# SELinux
BOARD_VENDOR_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy/vendor

# VINTF
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/configs/manifest.xml

# Inherit the proprietary files
include vendor/xiaomi/platina/BoardConfigVendor.mk
