$(call inherit-product, device/samsung/crespo/full_crespo.mk)

# Inherit some common stuff.
$(call inherit-product, vendor/mirage/config/common_full_phone.mk)

# Inherit some common stuff.
$(call inherit-product, vendor/mirage/config/gsm.mk)

# Inherit device settings
$(call inherit-product, vendor/mirage/config/common_nexus.mk)

# Inherit torch settings
$(call inherit-product, vendor/mirage/config/common_ledflash.mk)

#bootanimation
PRODUCT_COPY_FILES +=  \
    vendor/mirage/prebuilt/hdpi/bootanimation.zip:system/media/bootanimation.zip

#copy modified lights.s5pc110.so for BLN support
PRODUCT_COPY_FILES += \
    device/samsung/crespo/prebuilt/system/lib/hw/lights.s5pc110.so:system/lib/hw/lights.s5pc110.so

#set camera info
PRODUCT_PROPERTY_OVERRIDES += \
    ro.camera.res=5MP

# Release name
PRODUCT_RELEASE_NAME := crespo

# Use build.prop values similar to Google's values
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=soju \
    BUILD_FINGERPRINT="google/soju/crespo:4.2.2/JDQ39/485486:user/release-keys" \
    PRIVATE_BUILD_DESC="soju-user 4.2.2 JDQ39 485486 release-keys" \
    BUILD_NUMBER=485486

PRODUCT_NAME := mirage_crespo
PRODUCT_DEVICE := crespo
PRODUCT_BRAND := Google
PRODUCT_MODEL := Nexus S
PRODUCT_MANUFACTURER := Samsung
