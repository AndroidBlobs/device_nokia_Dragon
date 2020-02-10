# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from Dragon device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := nokia
PRODUCT_DEVICE := Dragon
PRODUCT_MANUFACTURER := nokia
PRODUCT_NAME := lineage_Dragon
PRODUCT_MODEL := GSI-00CN

PRODUCT_GMS_CLIENTID_BASE := android-nokia
TARGET_VENDOR := nokia
TARGET_VENDOR_PRODUCT_NAME := Dragon
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="Dragon_00CN-user 9 PPR1.180610.011 00CN_3_47C release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := Nokia/Dragon_00CN/DRG:9/PPR1.180610.011/00CN_3_47C:user/release-keys
