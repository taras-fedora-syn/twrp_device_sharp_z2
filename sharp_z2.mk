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
