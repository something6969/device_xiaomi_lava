# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from lava device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := xiaomi
PRODUCT_DEVICE := lava
PRODUCT_MANUFACTURER := xiaomi
PRODUCT_NAME := lineage_lava
PRODUCT_MODEL := havoc_lava

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
TARGET_VENDOR := xiaomi
TARGET_VENDOR_PRODUCT_NAME := lava
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="havoc_lava-userdebug 11 RQ3A.211001.001 1649560572 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := google/coral/coral:12/SP2A.220305.012/8177914:user/release-keys
