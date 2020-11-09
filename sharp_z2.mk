LOCAL_PATH := device/sharp/sharp_z2

ifeq ($(TARGET_PREBUILT_KERNEL),)
	                                                                                 LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	                                                                                 LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
$(LOCAL_PATH)/kernel:kernel \
$(LOCAL_PATH)/recovery.fstab:root/recovery.fstab

$(call inherit-product, build/target/product/full.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := sharp
PRODUCT_NAME := sharp_z2
PRODUCT_BRAND := sharp
PRODUCT_MODEL := Sharp Z2
PRODUCT_MANUFACTURER := sharp

PRODUCT_BUILD_PROP_OVERRIDES += \
		TARGET_DEVICE="sharp" \
		PRODUCT_NAME="sharp"

PRODUCT_GMS_CLIENTID_BASE := android-motorola

