# mt6797 platform boardconfig
LOCAL_PATH := device/sharp/sharp_z2

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic
TARGET_CPU_SMP := true

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := generic

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := MT6797
TARGET_NO_BOOTLOADER := true

# MTK HARDWARE
BOARD_HAS_MTK_HARDWARE := true
MTK_HARDWARE := true
BOARD_USES_LEGACY_MTK_AV_BLOB := true

# Kernel
BOARD_KERNEL_BASE := 0x40078000
BOARD_KERNEL_CMDLINE := bootopt=64S3,32N2,64N2 androidboot.selinux=permissive
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x04f88000 --tags_offset 0x03f88000
TARGET_PREBUILT_KERNEL := device/sharp/sharp_z2/prebuilt/kernel

# Platform
TARGET_BOARD_PLATFORM := mt6797
TARGET_BOARD_PLATFORM_GPU := Mali-T880

# Recovery
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_15x24.h\"
TARGET_RECOVERY_FSTAB := device/sharp/sharp_z2/recovery.fstab

# TARGET IMAGES
TARGET_USERIMAGES_USE_EXT4 := true

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 4294967296
BOARD_USERDATAIMAGE_PARTITION_SIZE := 25857866752
BOARD_CACHEIMAGE_PARTITION_SIZE := 452984832
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_FLASH_BLOCK_SIZE := 131072

# SYSTEM TYPE
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := ext4

BOARD_HAS_LARGE_FILESYSTEM := true

BOARD_SUPPRESS_EMMC_WIPE := true

# TWRP FLAGS
TW_THEME := portrait_hdpi
TW_DEVICE_VERSION := taras-fedora-syn
RECOVERY_SDCARD_ON_DATA := true
TW_MAX_BRIGHTNESS := 255
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/class/android_usb/android0/f_mass_storage/lun/file
TW_EXCLUDE_SUPERSU := true
TW_BRIGHTNESS_PATH := "/sys/class/leds/lcd-backlight/brightness"
TW_CUSTOM_CPU_TEMP_PATH := /sys/devices/virtual/thermal/thermal_zone1/temp
TW_USE_MODEL_HARDWARE_ID_FOR_DEVICE_ID := true
TW_INCLUDE_CRYPTO := true

#use toolbox
TW_USE_TOOLBOX := true

# DISABLED BUILD NINJA
USE_NINJA := false

#Allow_missing_dependencies
ALLOW_MISSING_DEPENDENCIES=true
