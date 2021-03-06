# Inherit AOSP device configuration for hammerhead
$(call inherit-product, device/lge/hammerhead/full_hammerhead.mk)

# Inherit common product files
$(call inherit-product, vendor/jollipop/configs/common.mk)

# Setup device specific product configuration
PRODUCT_NAME := jollipop_hammerhead
PRODUCT_BRAND := google
PRODUCT_DEVICE := hammerhead
PRODUCT_MODEL := Nexus 5
PRODUCT_MANUFACTURER := LGE

# Build prop fingerprint overrides
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME="hammerhead" BUILD_FINGERPRINT="google/hammerhead/hammerhead:5.0/LRX21T/1576899:user/release-keys" PRIVATE_BUILD_DESC="hammerhead-user 5.0 LRX21T 1576899 release-keys"