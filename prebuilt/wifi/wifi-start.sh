#!/system/bin/sh

echo "1" > /sys/devices/platform/msm_sdcc.2/polling
sleep 2
setprop wlan.driver.status ok
