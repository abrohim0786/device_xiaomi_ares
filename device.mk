#
# Copyright (C) 2025 The TWRP Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

LOCAL_PATH := device/xiaomi/ares

# API
PRODUCT_SHIPPING_API_LEVEL := 31

# Dynamic Partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Disable A/B until stable
ENABLE_VIRTUAL_AB := false
AB_OTA_UPDATER := false

# Essential HAL Packages
PRODUCT_PACKAGES += \
    android.hardware.boot@1.2-impl.recovery \
    android.hardware.boot@1.2-impl \
    bootctrl.$(TARGET_BOARD_PLATFORM).recovery \
    fastbootd \
    android.hardware.fastboot@1.0-impl-mock \
    android.hardware.health@2.1-service.recovery \
    android.hardware.health@2.1-impl.recovery

# Keymaster Services (Critical for FBE)
PRODUCT_PACKAGES += \
    android.hardware.keymaster@4.0-service \
    android.hardware.keymaster@4.0-impl \
    libkeymaster4 \
    libkeymaster4support \
    libpuresoftkeymasterdevice

# TWRP Crypto Configuration (FIXED)
TW_INCLUDE_CRYPTO := true
TW_INCLUDE_CRYPTO_FBE := true
TW_INCLUDE_FBE_METADATA_DECRYPT := true
TW_CRYPTO_USE_SYSTEM_VOLD := true
TW_CRYPTO_SYSTEM_VOLD_MOUNT := vendor
TW_CRYPTO_KEY_LOC := "key"
TW_CRYPTO_FS_OPTIONS := "noatime,nosuid,nodev,noauto_da_alloc,inlinecrypt"

# TWRP UI Configuration
TW_THEME := portrait_hdpi
DEVICE_RESOLUTION := 1080x2400
TW_BRIGHTNESS_PATH := "/sys/class/leds/lcd-backlight/brightness"
TW_MAX_BRIGHTNESS := 2047
TW_DEFAULT_BRIGHTNESS := 1200
TW_SCREEN_BLANK_ON_BOOT := true
TW_INPUT_BLACKLIST := "hbtp_vm"
TW_USE_TOOLBOX := true

# Storage Configuration
TARGET_USE_CUSTOM_LUN_FILE_PATH := /config/usb_gadget/g1/functions/mass_storage.usb0/lun.%d/file
TW_EXCLUDE_DEFAULT_USB_INIT := true
TW_MTP_DEVICE := /dev/mtp_usb
TW_INCLUDE_NTFS_3G := true

# Logging and Debugging
TWRP_INCLUDE_LOGCAT := true
TARGET_USES_LOGD := true
TW_EXCLUDE_TWRPAPP := true

# System Tools
TW_INCLUDE_RESETPROP := true
TW_INCLUDE_REPACKTOOLS := true
TW_EXCLUDE_APEX := true  # Disabled for Android 12+ compatibility
USE_RECOVERY_INSTALLER := true
RECOVERY_INSTALLER_PATH := $(DEVICE_PATH)/installer

# F2FS Support (Required for Data Partition)
TARGET_USERIMAGES_USE_F2FS := true
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := f2fs

# Status Bar Customization
TW_STATUS_ICONS_ALIGN := center
TW_CUSTOM_CPU_POS := "300"
TW_CUSTOM_CLOCK_POS := "70"
TW_CUSTOM_BATTERY_POS := "790"
TW_BATTERY_SYSFS_WAIT_SECONDS := 6

# Vendor Separation
TARGET_COPY_OUT_VENDOR := vendor

# SELinux Policies
BOARD_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy

# Override Recovery Tools
PRODUCT_HOST_PACKAGES += \
    pigz \
    e2fsck \
    fsck.f2fs \
    mkfs.f2fs

# Maintainer Info
TW_DEVICE_VERSION := Fixed-by-AbRoHim
