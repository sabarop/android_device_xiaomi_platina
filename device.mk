#
# Copyright (C) 2018-2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from sdm660-common
$(call inherit-product, device/xiaomi/sdm660-common/sdm660.mk)

DEVICE_PATH := device/xiaomi/platina

# Setup dalvik vm configs
$(call inherit-product, frameworks/native/build/phone-xhdpi-4096-dalvik-heap.mk)

# Inherit properties.mk
$(call inherit-product, $(DEVICE_PATH)/properties.mk)

# Audio
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/audio/audio_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_platform_info_intcodec.xml \
    $(DEVICE_PATH)/audio/mixer_paths.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths.xml \
    $(DEVICE_PATH)/audio/mixer_paths_overlay_static.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_overlay_static.xml \
    $(DEVICE_PATH)/audio/sound_trigger_mixer_paths.xml:$(TARGET_COPY_OUT_VENDOR)/etc/sound_trigger_mixer_paths.xml \
    $(DEVICE_PATH)/audio/sound_trigger_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/sound_trigger_platform_info.xml

# Camera
PRODUCT_PACKAGES += \
    libMegviiFacepp-0.5.2 \
    libmegface

# Consumerir
BOARD_HAVE_IR := false

# Display calibration
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/configs/display/qdcm_calib_data_boe_fhd_video_dsi_panel.xml:$(TARGET_COPY_OUT_VENDOR)/etc/qdcm_calib_data_boe_fhd_video_dsi_panel.xml \
    $(DEVICE_PATH)/configs/display/qdcm_calib_data_csot_fhd_video_dsi_panel.xml:$(TARGET_COPY_OUT_VENDOR)/etc/qdcm_calib_data_csot_fhd_video_dsi_panel.xml \
    $(DEVICE_PATH)/configs/display/qdcm_calib_data_tianma_fhd_video_dsi_panel.xml:$(TARGET_COPY_OUT_VENDOR)/etc/qdcm_calib_data_tianma_fhd_video_dsi_panel.xml

# FM
BOARD_HAVE_QCOM_FM := false

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(DEVICE_PATH)/overlay \
    $(DEVICE_PATH)/overlay-lineage

PRODUCT_PACKAGES += \
    NoCutoutOverlay

# Ramdisk
PRODUCT_PACKAGES += \
    fstab.qcom \
    init.device.rc

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH) \
    hardware/xiaomi

# USB
PRODUCT_PACKAGES += \
    android.hardware.usb@1.0-service.basic

# Wifi
PRODUCT_PACKAGES += \
    PlatinaWifiOverlay

# Inherit proprietary files
$(call inherit-product, vendor/xiaomi/platina/platina-vendor.mk)
