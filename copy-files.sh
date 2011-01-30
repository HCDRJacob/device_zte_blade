#!/bin/sh

# Copyright (C) 2010 The Android Open Source Project
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

DEVICE=blade
STAGESYS=~/cm6-$DEVICE/system

if [ "$1" = "pull" ]; then
  if [ -s "$STAGESYS" ]; then
  rm -R ~/cm6-$DEVICE
  fi
 mkdir ~/cm6-$DEVICE
 mkdir $STAGESYS
 mkdir $STAGESYS/bin
 mkdir $STAGESYS/lib
 mkdir $STAGESYS/etc
 adb pull /system/bin $STAGESYS/bin
 adb pull /system/lib $STAGESYS/lib
 adb pull /system/etc $STAGESYS/etc
fi

mkdir -p ../../../vendor/zte/blade/proprietary

DIRS="
bin
etc/firmware
lib/egl
lib/hw
"

for DIR in $DIRS; do
	mkdir -p ../../../vendor/zte/blade/proprietary/$DIR
done

FILES="
bin/hci_qcomm_init
bin/qmuxd

etc/firmware/yamato_pfp.fw
etc/firmware/yamato_pm4.fw

lib/egl/egl.cfg
lib/egl/libEGL_adreno200.so
lib/egl/libGLESv1_CM_adreno200.so
lib/egl/libGLESv2_adreno200.so
lib/egl/libq3dtools_adreno200.so

lib/hw/gralloc.default.so
lib/hw/gralloc.msm7k.so

lib/hw/sensors.default.so

lib/liba2dp.so
lib/libaudioeq.so

lib/libauth.so
lib/libcm.so
lib/libdiag.so
lib/libdll.so
lib/libdsm.so
lib/libdss.so
lib/libgsdi_exp.so
lib/libgsl.so
lib/libgstk_exp.so
lib/libmmgsdilib.so
lib/libnv.so
lib/liboem_rapi.so
lib/liboncrpc.so
lib/libpbmlib.so
lib/libqmi.so
lib/libqueue.so
lib/libril-qc-1.so
lib/libril-qcril-hook-oem.so
lib/libril.so
lib/libwms.so
lib/libwmsts.so

lib/libmmipl.so
lib/libmmjpeg.so
lib/liboemcamera.so

lib/libmm-adspsvc.so
lib/libOmxAacDec.so
lib/libomx_aacdec_sharedlibrary.so
lib/libOmxAmrDec.so
lib/libOmxAmrEnc.so
lib/libOmxAmrRtpDec.so
lib/libOmxAmrwbDec.so
lib/libOmxEvrcDec.so
lib/libOmxEvrcEnc.so
lib/libOmxH264Dec.so
lib/libomx_mp3dec_sharedlibrary.so
lib/libOmxMpeg4Dec.so
lib/libOmxQcelp13Enc.so
lib/libOmxQcelpDec.so
lib/libOmxVidEnc.so
lib/libOmxWmaDec.so
lib/libOmxWmvDec.so
"

for FILE in $FILES; do
	cp $STAGESYS/$FILE ../../../vendor/zte/blade/proprietary/$FILE
done
