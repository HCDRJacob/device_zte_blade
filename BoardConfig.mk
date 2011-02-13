USE_CAMERA_STUB:= false

BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_QCOM_LIBS := true
BOARD_HAVE_BLUETOOTH := true

#BOARD_WPA_SUPPLICANT_DRIVER := AWEXT
#WIFI_DRIVER_MODULE_PATH     := "/system/wifi/ar6000.ko"
#WIFI_DRIVER_MODULE_NAME     := "ar6000"
#WIFI_FIRMWARE_LOADER := wifi-loader

WIFI_DRIVER_MODULE_NAME     := ar6000
WIFI_DRIVER_MODULE_PATH     := rfkill
BOARD_WPA_SUPPLICANT_DRIVER:=WEXT

TARGET_USES_OLD_LIBSENSORS_HAL := true

BOARD_HAS_FLIPPED_SCREEN := true

# inherit from the proprietary version
-include vendor/zte/blade/BoardConfigVendor.mk

TARGET_NO_BOOTLOADER := true
TARGET_NO_RECOVERY := true
TARGET_CPU_ABI := armeabi
TARGET_ARCH_VARIANT := armv6-vfp
TARGET_BOARD_PLATFORM := msm7k
TARGET_CPU_ABI := armeabi
TARGET_BOOTLOADER_BOARD_NAME := blade

TARGET_BOARD_PLATFORM_GPU := qcom-adreno200

TARGET_OTA_ASSERT_DEVICE := blade

BOARD_KERNEL_CMDLINE := console=null androidboot.hardware=qcom no_console_suspend g_android.product_id=0x1354
BOARD_KERNEL_BASE := 0x02a00000
#BOARD_PAGE_SIZE := 0x00000800

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00380000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00480000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x08c60000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_PREBUILT_KERNEL := device/zte/blade/kernel

BOARD_NO_RGBX_8888 := true

#BOARD_GPS_LIBRARIES := libloc_api

TARGET_LIBAGL_USE_GRALLOC_COPYBITS := true

JS_ENGINE := v8

TARGET_PROVIDES_LIBAUDIO := true

#TARGET_USES_2G_VM_SPLIT := true

TARGET_USES_OLD_LIBSENSORS_HAL:=true
# to enable the GPS HAL
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := blade
# AMSS version to use for GPS
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 6225
