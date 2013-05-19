## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := k860

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/lenovo/k860/device_k860.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := k860
PRODUCT_NAME := cm_k860
PRODUCT_BRAND := lenovo
PRODUCT_MODEL := k860
PRODUCT_MANUFACTURER := lenovo
