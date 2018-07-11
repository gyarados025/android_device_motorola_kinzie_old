# Inherit 64-bit configs
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, device/motorola/kinzie/device.mk)

# Inherit some common stuff.
$(call inherit-product, vendor/aicp/configs/common_full_phone.mk)

DEVICE_PACKAGE_OVERLAYS += device/motorola/kinzie/overlay

## Device identifier. This must come after all inclusions
PRODUCT_NAME := aicp_kinzie
PRODUCT_BRAND := Motorola
PRODUCT_DEVICE := kinzie
PRODUCT_MODEL := XT1581
PRODUCT_MANUFACTURER := Motorola
PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
BUILD_FINGERPRINT=motorola/kinzie_reteu/kinzie:7.0/NPKS25.200-12-9/6:user/release-keys \
