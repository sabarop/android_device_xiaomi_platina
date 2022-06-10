#
#	This file is part of the OrangeFox Recovery Project
# 	Copyright (C) 2019-2022 The OrangeFox Recovery Project
#
#	OrangeFox is free software: you can redistribute it and/or modify
#	it under the terms of the GNU General Public License as published by
#	the Free Software Foundation, either version 3 of the License, or
#	any later version.
#
#	OrangeFox is distributed in the hope that it will be useful,
#	but WITHOUT ANY WARRANTY; without even the implied warranty of
#	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#	GNU General Public License for more details.
#
# 	This software is released under GPL version 3 or any later version.
#	See <http://www.gnu.org/licenses/>.
#
# 	Please maintain this if you use this script or any part of it
#

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

LOCAL_PATH := device/xiaomi/lavender

# fscrypt policy version
TW_USE_FSCRYPT_POLICY := 1

# Decryption
PRODUCT_PACKAGES += \
    qcom_decrypt \
    qcom_decrypt_fbe

# Exclude Apex
TW_EXCLUDE_APEX := true

# OEM otacert
PRODUCT_EXTRA_RECOVERY_KEYS += \
    vendor/recovery/security/miui

# FDE [Not supported]
TARGET_HW_DISK_ENCRYPTION := false
ifeq ($(TARGET_HW_DISK_ENCRYPTION),true)
$(warning FDE doesn't work with the 11.0 manifest. You will not be able to decrypt MIUI ROMs)
TARGET_CRYPTFS_HW_PATH := vendor/qcom/opensource/cryptfs_hw

TARGET_RECOVERY_DEVICE_MODULES += \
	libhardware_legacy \
	android.system.suspend@1.0

RECOVERY_LIBRARY_SOURCE_FILES += \
    $(TARGET_OUT_SHARED_LIBRARIES)/libhardware_legacy.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/android.system.suspend@1.0.so

PRODUCT_COPY_FILES += \
	$(OUT_DIR)/target/product/lavender/obj/SHARED_LIBRARIES/libcryptfs_hw_intermediates/libcryptfs_hw.so:$(TARGET_COPY_OUT_RECOVERY)/root/system/lib64/libcryptfs_hw.so
endif

# Libraries
TARGET_RECOVERY_DEVICE_MODULES += \
	libion \
	vendor.display.config@1.0 \
	vendor.display.config@2.0 \
	libdisplayconfig.qti

RECOVERY_LIBRARY_SOURCE_FILES += \
    $(TARGET_OUT_SHARED_LIBRARIES)/libion.so \
    $(TARGET_OUT_SYSTEM_EXT_SHARED_LIBRARIES)/vendor.display.config@1.0.so \
    $(TARGET_OUT_SYSTEM_EXT_SHARED_LIBRARIES)/vendor.display.config@2.0.so \
    $(TARGET_OUT_SYSTEM_EXT_SHARED_LIBRARIES)/libdisplayconfig.qti.so
#
