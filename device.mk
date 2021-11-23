#
# Exclude Apex, for A12 ROMs?
TW_EXCLUDE_APEX := true

# use twrp-common for decryption
BOARD_USES_QCOM_FBE_DECRYPTION := true

# FDE
BOARD_USES_QCOM_DECRYPTION := true

# OEM otacert
PRODUCT_EXTRA_RECOVERY_KEYS += \
    vendor/recovery/security/miui
#
PRODUCT_PACKAGES += \
    qcom_decrypt \
    qcom_decrypt_fbe
#
