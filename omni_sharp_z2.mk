#
# Copyright 2017 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
#device_path
LOCAL_PATH := device/sharp/sharp_z2

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from hardware-specific part of the product configuration
$(call inherit-product, device/sharp/sharp_z2/sharp_z2.mk)

PRODUCT_NAME := omni_sharp_z2

# Ramdisk
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery/root/init.recovery.mt6797.rc:root/init.recovery.mt6797.rc \
    $(LOCAL_PATH)/recovery/root/init.recovery.service.rc:root/init.recovery.service.rc \
    $(LOCAL_PATH)/recovery/root/init.mt6797.usb.rc:root/init.mt6797.usb.rc \
    $(LOCAL_PATH)/recovery/root/ueventd.mt6797.rc:root/ueventd.mt6797.rc \
    $(LOCAL_PATH)/recovery/root/sbin/unzip:root/sbin/unzip

#Allow_missing_dependencies
ALLOW_MISSING_DEPENDENCIES=true
