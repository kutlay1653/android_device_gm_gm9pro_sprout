# Inherit some common Lineage stuff.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Vendor blobs
$(call inherit-product-if-exists, vendor/GM/GM9PRO_d_sprout/GM9PRO_d_sprout-vendor.mk)

# Device
$(call inherit-product, device/GM/GM9PRO_d_sprout/device.mk)

# Device identifiers
PRODUCT_DEVICE := GM9PRO_d_sprout
PRODUCT_NAME := lineage_GM9PRO_d_sprout
PRODUCT_BRAND := GM
PRODUCT_MODEL := GM 9 Pro
PRODUCT_MANUFACTURER := General Mobile
PRODUCT_RELEASE_NAME := GM9PRO_d_sprout

PRODUCT_BUILD_PROP_OVERRIDES += \
        PRODUCT_NAME=GM9PRO_d_sprout \
        PRIVATE_BUILD_DESC="GM9PRO_d_sprout-user 9 PKQ1.180904.001 284 release-keys"

BUILD_FINGERPRINT := GM/GM9PRO/GM9PRO_d_sprout:9/PKQ1.180904.001/284:user/release-keys
