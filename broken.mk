# Broke ass mofos

#Boot
TARGET_SCREEN_HEIGHT := 2048
TARGET_SCREEN_WIDTH := 1536

# Camera
PRODUCT_PACKAGES += \
	Snap

# Inherit some common broken shit.
$(call inherit-product, vendor/broken/config/common_full_tablet_lte.mk)

# Enhanced NFC
$(call inherit-product, vendor/broken/config/nfc_enhanced.mk)

# Inherit device configuration
$(call inherit-product, device/htc/flounder/aosp_flounder64.mk)

# Symlink /vendor partition to /system/vendor
BOARD_NEEDS_VENDORIMAGE_SYMLINK := true

# Assert for recovery compatibility
TARGET_OTA_ASSERT_DEVICE := flounder,flounder_lte

# Extra Packages
PRODUCT_PACKAGES += \
	com.android.nfc_extras

# Inherrit LTE config
$(call inherit-product, device/htc/flounder/device-lte.mk)
$(call inherit-product-if-exists, vendor/htc/flounder_lte/device-vendor.mk)

# LTE Overlays 
DEVICE_PACKAGE_OVERLAYS += \
	device/htc/flounder/lte_only_overlay

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=flounder_lte \
    BUILD_FINGERPRINT=google/volantisg/flounder_lte:6.0.1/MMB29R/2482564:user/release-keys \
    PRIVATE_BUILD_DESC="volantisg-user 6.0.1 MMB29R 2482564 release-keys" \
    BUILD_ID=MMB29R

# Broken Device Maintainers
PRODUCT_BUILD_PROP_OVERRIDES += \
	DEVICE_MAINTAINERS="Ninja_Box" 

## Device identifier. This must come after all inclusions
PRODUCT_NAME := broken_flounder_lte
PRODUCT_DEVICE := flounder_lte
PRODUCT_BRAND := google
PRODUCT_MODEL := Nexus 9
