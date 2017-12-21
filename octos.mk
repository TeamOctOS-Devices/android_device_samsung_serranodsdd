LOCAL_PATH := $(call my-dir)
include $(call all-subdir-makefiles,$(LOCAL_PATH))

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit OctOs
$(call inherit-product, vendor/octos/config/common_full_phone.mk)

# Inherit from serranodsdd device
$(call inherit-product, device/samsung/serranodsdd/device.mk)

PRODUCT_NAME := octos_serranodsdd
PRODUCT_DEVICE := serranodsdd
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := Samsung
PRODUCT_MODEL := GT-I9192

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=serranods \
    BUILD_FINGERPRINT="samsung/serranodsdd/serranods:4.4.2/KOT49H/I9192DDUCOF2:user/release-keys" \
PRIVATE_BUILD_DESC="serranodsdd-user 4.4.2 KOT49H I9192DDUCOF2 release-keys"