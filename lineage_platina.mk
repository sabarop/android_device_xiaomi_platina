#
# Copyright (C) 2018-2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o_mr1.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from platina device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := platina
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_NAME := lineage_platina
PRODUCT_MODEL := MI 8 Lite

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

TARGET_VENDOR_PRODUCT_NAME := platina

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="platina-user 10 QKQ1.190910.002 V12.0.3.0.QDTMIXM release-keys"

BUILD_FINGERPRINT := Xiaomi/platina/platina:10/QKQ1.190910.002/V12.0.3.0.QDTMIXM:user/release-keys
