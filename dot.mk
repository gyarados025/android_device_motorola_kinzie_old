# Inherit 64-bit configs
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, device/motorola/kinzie/device.mk)

# Inherit some common stuff.
$(call inherit-product, vendor/dot/config/common_full_phone.mk)

DEVICE_PACKAGE_OVERLAYS += device/motorola/kinzie/overlay

## Device identifier. This must come after all inclusions
PRODUCT_NAME := dot_kinzie
PRODUCT_BRAND := Android
PRODUCT_DEVICE := kinzie
PRODUCT_MODEL := XT1581
PRODUCT_MANUFACTURER := motorola
PRODUCT_GMS_CLIENTID_BASE := android-motorola

##PRODUCT_BUILD_PROP_OVERRIDES += \
##BUILD_FINGERPRINT=motorola/kinzie_reteu/kinzie:7.0/NPKS25.200-12-9/6:user/release-keys \
##PRIVATE_BUILD_DESC="kinzie_reteu-user 7.0 NPKS25.200-12-9 6 release-keys"
