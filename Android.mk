ifneq ($(filter $(TARGET_DEVICE), sharp_z2),)

LOCAL_PATH := $(call my-dir)

include $(call all-makefiles-under,$(LOCAL_PATH))

endif
