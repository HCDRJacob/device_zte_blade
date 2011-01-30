## This device is the zte blade

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/zte/blade/blade-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/zte/blade/overlay

PRODUCT_LOCALES += hdpi

PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=240

# HAL libs and other system binaries
PRODUCT_PACKAGES += \
    hwprops \
    abtfilt \
    gps.blade \
    lights.blade \
    copybit.blade \
    gralloc.blade \
    libOmxCore


ifeq ($(TARGET_PREBUILT_KERNEL),)
    LOCAL_KERNEL := device/zte/blade/kernel
else
    LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel


# Live wallpaper packages
PRODUCT_PACKAGES += \
    LiveWallpapers \
    LiveWallpapersPicker \
    MagicSmokeWallpapers \
    VisualizationWallpapers \
    librs_jni

# Publish that we support the live wallpaper feature.
PRODUCT_COPY_FILES += \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:/system/etc/permissions/android.software.live_wallpaper.xml

# Board-specific init
PRODUCT_COPY_FILES += \
    device/zte/blade/init.blade.rc:root/init.blade.rc
#    device/zte/blade/ueventd.qct.rc:root/ueventd.qct.rc

## RIL related stuff
PRODUCT_COPY_FILES += \
    device/zte/blade/spn-conf.xml:system/etc/spn-conf.xml \
    vendor/zte/blade/proprietary/bin/qmuxd:system/bin/qmuxd \
    vendor/zte/blade/proprietary/lib/liboncrpc.so:system/lib/liboncrpc.so \
    vendor/zte/blade/proprietary/lib/libmmgsdilib.so:system/lib/libmmgsdilib.so \
    vendor/zte/blade/proprietary/lib/libgsdi_exp.so:system/lib/libgsdi_exp.so \
    vendor/zte/blade/proprietary/lib/libgstk_exp.so:system/lib/libgstk_exp.so \
    vendor/zte/blade/proprietary/lib/libwms.so:system/lib/libwms.so \
    vendor/zte/blade/proprietary/lib/libnv.so:system/lib/libnv.so \
    vendor/zte/blade/proprietary/lib/libwmsts.so:system/lib/libwmsts.so \
    vendor/zte/blade/proprietary/lib/libdss.so:system/lib/libdss.so \
    vendor/zte/blade/proprietary/lib/libqmi.so:system/lib/libqmi.so \
    vendor/zte/blade/proprietary/lib/libdiag.so:system/lib/libdiag.so \
    vendor/zte/blade/proprietary/lib/libpbmlib.so:system/lib/libpbmlib.so \
    vendor/zte/blade/proprietary/lib/libauth.so:system/lib/libauth.so \
    vendor/zte/blade/proprietary/lib/liboem_rapi.so:system/lib/liboem_rapi.so \
    vendor/zte/blade/proprietary/lib/libdsm.so:system/lib/libdsm.so \
    vendor/zte/blade/proprietary/lib/libqueue.so:system/lib/libqueue.so \
    vendor/zte/blade/proprietary/lib/libcm.so:system/lib/libcm.so \
    vendor/zte/blade/proprietary/lib/libdll.so:system/lib/libdll.so \
    vendor/zte/blade/proprietary/lib/libril-qc-1.so:system/lib/libril-qc-1.so \
    vendor/zte/blade/proprietary/lib/libril-qcril-hook-oem.so:system/lib/libril-qcril-hook-oem.so

## OMX proprietaries
PRODUCT_COPY_FILES += \
    vendor/zte/blade/proprietary/lib/libmm-adspsvc.so:system/lib/libmm-adspsvc.so \
    vendor/zte/blade/proprietary/lib/libomx_aacdec_sharedlibrary.so:system/lib/libomx_aacdec_sharedlibrary.so \
    vendor/zte/blade/proprietary/lib/libOmxAmrRtpDec.so:system/lib/libOmxAmrRtpDec.so \
    vendor/zte/blade/proprietary/lib/libOmxH264Dec.so:system/lib/libOmxH264Dec.so \
    vendor/zte/blade/proprietary/lib/libOmxQcelpDec.so:system/lib/libOmxQcelpDec.so \
    vendor/zte/blade/proprietary/lib/libOmxAacEnc.so:system/lib/libOmxAacEnc.so \
    vendor/zte/blade/proprietary/lib/libOmxAmrwbDec.so:system/lib/libOmxAmrwbDec.so \
    vendor/zte/blade/proprietary/lib/libomx_mp3dec_sharedlibrary.so:system/lib/libomx_mp3dec_sharedlibrary.so \
    vendor/zte/blade/proprietary/lib/libOmxVidEnc.so:system/lib/libOmxVidEnc.so \
    vendor/zte/blade/proprietary/lib/libOmxAmrDec.so:system/lib/libOmxAmrDec.so \
    vendor/zte/blade/proprietary/lib/libOmxEvrcDec.so:system/lib/libOmxEvrcDec.so \
    vendor/zte/blade/proprietary/lib/libOmxMpeg4Dec.so:system/lib/libOmxMpeg4Dec.so \
    vendor/zte/blade/proprietary/lib/libOmxWmaDec.so:system/lib/libOmxWmaDec.so \
    vendor/zte/blade/proprietary/lib/libOmxAmrEnc.so:system/lib/libOmxAmrEnc.so \
    vendor/zte/blade/proprietary/lib/libOmxEvrcEnc.so:system/lib/libOmxEvrcEnc.so \
    vendor/zte/blade/proprietary/lib/libOmxQcelp13Enc.so:system/lib/libOmxQcelp13Enc.so \
    vendor/zte/blade/proprietary/lib/libOmxWmvDec.so:system/lib/libOmxWmvDec.so

## Hardware properties 
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/base/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/base/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml

PRODUCT_COPY_FILES += \
    device/zte/blade/prebuilt/librpc.so:system/lib/librpc.so

## Camera proprietaries
PRODUCT_COPY_FILES += \
    vendor/zte/blade/proprietary/lib/liboemcamera.so:system/lib/liboemcamera.so \
    vendor/zte/blade/proprietary/lib/libmmjpeg.so:system/lib/libmmjpeg.so \
    vendor/zte/blade/proprietary/lib/libmmipl.so:system/lib/libmmipl.so

## Atheros AR6002 firmware
PRODUCT_COPY_FILES += \
    device/zte/blade/prebuilt/data.patch.hw2_0.bin:system/etc/firmware/data.patch.hw2_0.bin \
    device/zte/blade/prebuilt/eeprom.bin:system/etc/firmware/eeprom.bin \
    device/zte/blade/prebuilt/athwlan.bin.z77:system/etc/firmware/athwlan.bin.z77 \
    device/zte/blade/hostapd.conf:system/etc/wifi/hostapd.conf

## Other libraries and proprietary binaries
PRODUCT_COPY_FILES += \
    vendor/zte/blade/proprietary/bin/hci_qcomm_init:system/bin/hci_qcomm_init \
    device/zte/blade/prebuilt/init.qcom.bt.sh:system/bin/init.qcom.bt.sh \
    vendor/zte/blade/proprietary/lib/hw/sensors.default.so:system/lib/hw/sensors.default.so \
    device/zte/blade/AutoVolumeControl.txt:system/etc/AutoVolumeControl.txt \
    device/zte/blade/AudioFilter.csv:system/etc/AudioFilter.csv \
    vendor/zte/blade/proprietary/lib/liba2dp.so:system/lib/liba2dp.so \
    vendor/zte/blade/proprietary/lib/libaudioeq.so:system/lib/libaudioeq.so \
    vendor/zte/blade/proprietary/lib/egl/egl.cfg:system/lib/egl/egl.cfg \
    vendor/zte/blade/proprietary/lib/egl/libGLESv1_CM_adreno200.so:system/lib/egl/libGLESv1_CM_adreno200.so \
    vendor/zte/blade/proprietary/lib/egl/libq3dtools_adreno200.so:system/lib/egl/libq3dtools_adreno200.so \
    vendor/zte/blade/proprietary/lib/egl/libEGL_adreno200.so:system/lib/egl/libEGL_adreno200.so \
    vendor/zte/blade/proprietary/lib/egl/libGLESv2_adreno200.so:system/lib/egl/libGLESv2_adreno200.so \
    vendor/zte/blade/proprietary/etc/firmware/yamato_pfp.fw:system/etc/firmware/yamato_pfp.fw \
    vendor/zte/blade/proprietary/etc/firmware/yamato_pm4.fw:system/etc/firmware/yamato_pm4.fw \
    vendor/zte/blade/proprietary/lib/libgsl.so:system/lib/libgsl.so

PRODUCT_COPY_FILES += \
    device/zte/blade/media_profiles.xml:system/etc/media_profiles.xml \
    device/zte/blade/dhcpcd.conf:system/etc/dhcpcd/dhcpcd.conf \
    device/zte/blade/vold.fstab:system/etc/vold.fstab \
    device/zte/blade/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
    device/zte/blade/blade_keypad.kl:system/usr/keylayout/blade_keypad.kl


$(call inherit-product, build/target/product/full_base.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := blade
PRODUCT_DEVICE := blade
PRODUCT_MODEL := zte blade
