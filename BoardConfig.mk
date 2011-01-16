# Copyright (C) 2007 The Android Open Source Project
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


# WARNING: This line must come *before* including the proprietary
# variant, so that it gets overwritten by the parent (which goes
# against the traditional rules of inheritance).
USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/zte/blade/BoardConfigVendor.mk


TARGET_BOARD_PLATFORM := msm7k
TARGET_ARCH_VARIANT := armv6-vfp
TARGET_CPU_ABI := armeabi-v6l
TARGET_CPU_ABI2 := armeabi
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200
TARGET_BOOTLOADER_BOARD_NAME := blade

TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true
TARGET_NO_RECOVERY := true

BOARD_USE_NASTY_PTHREAD_CREATE_HACK := true

TARGET_LIBAGL_USE_GRALLOC_COPYBITS := true
BOARD_NO_RGBX_8888 := true

BOARD_USES_GENERIC_AUDIO := false
BOARD_USES_QCOM_LIBS := true
BOARD_USE_FROYO_LIBCAMERA := true
BOARD_USES_GPSSHIM := true
BOARD_GPS_NEEDS_XTRA := true

BOARD_HAVE_BLUETOOTH := true

BOARD_WPA_SUPPLICANT_DRIVER := CUSTOM
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := libCustomWifi
BOARD_WLAN_TI_STA_DK_ROOT := system/wlan/ti/wilink_6_1
BOARD_WLAN_DEVICE := tiwlan0
WIFI_DRIVER_MODULE_PATH := /system/lib/modules/tiwlan_drv.ko
WIFI_DRIVER_MODULE_NAME := tiwlan_drv
WIFI_FIRMWARE_LOADER := wlan_loader
WIFI_EXT_MODULE_PATH := /system/lib/modules/sdio.ko
WIFI_EXT_MODULE_NAME := sdio

BOARD_EGL_CFG := device/zte/blade/files/egl.cfg

BOARD_KERNEL_CMDLINE := no_console_suspend=1 console=null
BOARD_KERNEL_BASE := 0x12C00000

#$ adb shell cat /proc/mtd
#dev:    size   erasesize  name
#mtd0: 000a0000 00020000 "misc"
#mtd1: 003e0000 00020000 "recovery"
#mtd2: 00300000 00020000 "boot"
#mtd3: 0f000000 00020000 "system"
#mtd4: 02800000 00020000 "cache"
#mtd5: 0b920000 00020000 "userdata"
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x003e0000
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x003e0000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x0f000000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x0b920000

BOARD_FLASH_BLOCK_SIZE := 131072

WITH_DEXPREOPT := true
JS_ENGINE := v8
