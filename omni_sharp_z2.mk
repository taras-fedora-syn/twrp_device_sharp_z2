# Release name
PRODUCT_RELEASE_NAME := sharp_z2

$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Get the prebuilt list of APNs
$(call inherit-product, vendor/omni/config/gsm.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

PRODUCT_COPY_FILES += device/sharp/sharp_z2/recovery/root/etc/recovery.fstab:recovery/root/etc/recovery.fstab

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := sharp_z2
PRODUCT_NAME := omni_sharp_z2
PRODUCT_BRAND := Sharp
PRODUCT_MODEL := Sharp Z2
PRODUCT_MANUFACTURER := Sharp

# Ramdisk
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery/root/init.recovery.mt6797.rc:root/init.recovery.mt6797.rc \
    $(LOCAL_PATH)/recovery/root/init.mt6797.usb.rc:root/init.mt6797.usb.rc \
    $(LOCAL_PATH)/recovery/root/ueventd.mt6797.rc:root/ueventd.mt6797.rc
