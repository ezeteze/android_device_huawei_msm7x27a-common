$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The GPS configuration appropriate for this device.
$(call inherit-product, device/common/gps/gps_eu_supl.mk)

$(call inherit-product-if-exists, vendor/huawei/msm7x27a-common/msm7x27a-common-vendor.mk)

# inherit from the proprietary version
-include vendor/huawei/msm7x27a-common/BoardConfigVendor.mk

DEVICE_PACKAGE_OVERLAYS += device/huawei/msm7x27a-common/overlay

PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

# Video
PRODUCT_PACKAGES += \
    libI420colorconvert \
    libstagefrighthw \
    libmm-omxcore \
    libOmxCore

# Graphics
PRODUCT_PACKAGES += \
    copybit.msm7x27a \
    gralloc.msm7x27a \
    hwcomposer.msm7x27a \
    libtilerenderer

# Audio
PRODUCT_PACKAGES += \
    audio.primary.msm7x27a \
    audio_policy.msm7x27a \
    audio.a2dp.default \
    libaudioutils

# Other HALs
PRODUCT_PACKAGES += \
    power.huawei \
    gps.msm7x27a \
    lights.msm7x27a

# Other Packages
PRODUCT_PACKAGES += \
    dexpreopt \
    libloc_api-rpc \
    make_ext4fs \
    setup_fs \
    e2fsck \
    com.android.future.usb.accessory \
    Torch

PRODUCT_TAGS += dalvik.gc.type-precise

PRODUCT_COPY_FILES += \
    device/huawei/msm7x27a-common/ramdisk/init.huawei.rc:root/init.huawei.rc \
    device/huawei/msm7x27a-common/ramdisk/ueventd.huawei.rc:root/ueventd.huawei.rc \
    device/huawei/msm7x27a-common/ramdisk/init.huawei.usb.rc:root/init.huawei.usb.rc

PRODUCT_COPY_FILES += \
    device/huawei/msm7x27a-common/prebuilt/fw_4330_b2.bin:system/wifi/fw_4330_b2.bin \
    device/huawei/msm7x27a-common/configs/nvram_4330.txt:system/wifi/nvram_4330.txt \
    device/huawei/msm7x27a-common/configs/dhcpcd.conf:system/etc/dhcpcd/dhcpcd.conf \
    device/huawei/msm7x27a-common/configs/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf

PRODUCT_COPY_FILES += \
    device/huawei/msm7x27a-common/prebuilt/BCM4330.hcd:system/etc/bluetooth/BCM4330.hcd \
    device/huawei/msm7x27a-common/configs/init.bcm.bt.sh:system/etc/bluetooth/init.bcm.bt.sh

PRODUCT_COPY_FILES += \
    device/huawei/msm7x27a-common/configs/audio_policy.conf:system/etc/audio_policy.conf \
    device/huawei/msm7x27a-common/configs/AudioFilter.csv:system/etc/AudioFilter.csv \
    device/huawei/msm7x27a-common/configs/AutoVolumeControl.txt:system/etc/AutoVolumeControl.txt \
    device/huawei/msm7x27a-common/configs/media_codecs.xml:system/etc/media_codecs.xml \
    device/huawei/msm7x27a-common/configs/media_profiles.xml:system/etc/media_profiles.xml \
    device/huawei/msm7x27a-common/configs/vold.fstab:system/etc/vold.fstab

PRODUCT_COPY_FILES += \
    device/huawei/msm7x27a-common/idc/synaptics.idc:system/usr/idc/synaptics.idc \
    device/huawei/msm7x27a-common/idc/qwerty.idc:system/usr/idc/qwerty.idc \
    device/huawei/msm7x27a-common/idc/qwerty2.idc:system/usr/idc/qwerty2.idc \
    device/huawei/msm7x27a-common/keychars/7x27a_kp.kcm:system/usr/keychars/7x27a_kp.kcm \
    device/huawei/msm7x27a-common/keylayout/7x27a_kp.kl:system/usr/keylayout/7x27a_kp.kl \
    device/huawei/msm7x27a-common/keylayout/7k_handset.kl:system/usr/keylayout/7k_handset.kl \
    device/huawei/msm7x27a-common/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
    device/huawei/msm7x27a-common/keylayout/Generic.kl:system/usr/keylayout/Generic.kl \
    device/huawei/msm7x27a-common/keylayout/surf_keypad.kl:system/usr/keylayout/surf_keypad.kl

# Install the features available on this device.
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml
    
# Modules
PRODUCT_COPY_FILES += \
	device/huawei/msm7x27a-common/modules/ansi_cprng.ko:system/lib/modules/ansi_cprng.ko \
	device/huawei/msm7x27a-common/modules/bcmdhd.ko:system/lib/modules/bcmdhd.ko \
	device/huawei/msm7x27a-common/modules/dal_remotetest.ko:system/lib/modules/dal_remotetest.ko \
	device/huawei/msm7x27a-common/modules/evbug.ko:system/lib/modules/evbug.ko \
	device/huawei/msm7x27a-common/modules/gspca_main.ko:system/lib/modules/gspca_main.ko \
	device/huawei/msm7x27a-common/modules/lcd.ko:system/lib/modules/lcd.ko \
	device/huawei/msm7x27a-common/modules/librasdioif.ko:system/lib/modules/librasdioif.ko \
	device/huawei/msm7x27a-common/modules/max2165.ko:system/lib/modules/max2165.ko \
	device/huawei/msm7x27a-common/modules/mc44s803.ko:system/lib/modules/mc44s803.ko \
	device/huawei/msm7x27a-common/modules/mmc_test.ko:system/lib/modules/mmc_test.ko \
	device/huawei/msm7x27a-common/modules/mt20xx.ko:system/lib/modules/mt20xx.ko \
	device/huawei/msm7x27a-common/modules/mt2060.ko:system/lib/modules/mt2060.ko \
	device/huawei/msm7x27a-common/modules/mt2131.ko:system/lib/modules/mt2131.ko \
	device/huawei/msm7x27a-common/modules/mt2266.ko:system/lib/modules/mt2266.ko \
	device/huawei/msm7x27a-common/modules/mtd_erasepart.ko:system/lib/modules/mtd_erasepart.ko \
	device/huawei/msm7x27a-common/modules/mtd_nandecctest.ko:system/lib/modules/mtd_nandecctest.ko \
	device/huawei/msm7x27a-common/modules/mtd_oobtest.ko:system/lib/modules/mtd_oobtest.ko \
	device/huawei/msm7x27a-common/modules/mtd_pagetest.ko:system/lib/modules/mtd_pagetest.ko \
	device/huawei/msm7x27a-common/modules/mtd_readtest.ko:system/lib/modules/mtd_readtest.ko \
	device/huawei/msm7x27a-common/modules/mtd_speedtest.ko:system/lib/modules/mtd_speedtest.ko \
	device/huawei/msm7x27a-common/modules/mtd_stresstest.ko:system/lib/modules/mtd_stresstest.ko \
	device/huawei/msm7x27a-common/modules/mtd_subpagetest.ko:system/lib/modules/mtd_subpagetest.ko \
	device/huawei/msm7x27a-common/modules/mtd_torturetest.ko:system/lib/modules/mtd_torturetest.ko \
	device/huawei/msm7x27a-common/modules/mxl5005s.ko:system/lib/modules/mxl5005s.ko \
	device/huawei/msm7x27a-common/modules/mxl5007t.ko:system/lib/modules/mxl5007t.ko \
	device/huawei/msm7x27a-common/modules/qt1010.ko:system/lib/modules/qt1010.ko \
	device/huawei/msm7x27a-common/modules/scsi_wait_scan.ko:system/lib/modules/scsi_wait_scan.ko \
	device/huawei/msm7x27a-common/modules/tda827x.ko:system/lib/modules/tda827x.ko \
	device/huawei/msm7x27a-common/modules/tda8290.ko:system/lib/modules/tda8290.ko \
	device/huawei/msm7x27a-common/modules/tda9887.ko:system/lib/modules/tda9887.ko \
	device/huawei/msm7x27a-common/modules/tda18212.ko:system/lib/modules/tda18212.ko \
	device/huawei/msm7x27a-common/modules/tda18218.ko:system/lib/modules/tda18218.ko \
	device/huawei/msm7x27a-common/modules/tda18271.ko:system/lib/modules/tda18271.ko \
	device/huawei/msm7x27a-common/modules/tea5761.ko:system/lib/modules/tea5761.ko \
	device/huawei/msm7x27a-common/modules/tea5767.ko:system/lib/modules/tea5767.ko \
	device/huawei/msm7x27a-common/modules/tuner-simple.ko:system/lib/modules/tuner-simple.ko \
	device/huawei/msm7x27a-common/modules/tuner-types.ko:system/lib/modules/tuner-types.ko \
	device/huawei/msm7x27a-common/modules/tuner-xc2028.ko:system/lib/modules/tuner-xc2028.ko \
	device/huawei/msm7x27a-common/modules/xc5000.ko:system/lib/modules/xc5000.ko

# Radio
PRODUCT_PROPERTY_OVERRIDES += \
    ril.subscription.types=NV,RUIM

# Audio
PRODUCT_PROPERTY_OVERRIDES += \
    dev.pm.dyn_sample_period=700000 \
    dev.pm.dyn_samplingrate=1 \
    headset.hook.delay=500 \
    af.resampler.quality=255

# CWM
PRODUCT_PROPERTY_OVERRIDES += \
    ro.cwm.enable_key_repeat=true

# Dalvik
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.dexopt-data-only=1 \
    dalvik.vm.execution-mode=int:jit \
    dalvik.vm.heapgrowthlimit=36m \
    dalvik.vm.heapsize=128m \
    dalvik.vm.heapstartsize=5m \

# Display
# We should be using mdp composition but
# this is causing issues for 7x27a on CM
PRODUCT_PROPERTY_OVERRIDES += \
    debug.composition.type=mdp \
    debug.hwc.dynThreshold=1.91 \
    debug.sf.hw=1 \
    debug.sf.swaprect=1 \
    gfx.highend_override=yes \
    hwui.render_dirty_regions=true \
    persist.sys.use_dithering=2 \
    ro.max.fling_velocity=4000 \
    ro.opengles.version=131072 \
    ro.sf.lcd_density=240

# Qualcomm
PRODUCT_PROPERTY_OVERRIDES += \
    com.qc.hardware=true \
    debug.composition.type=mdp \
    hwui.render_dirty_regions.7x27A=true \
    ro.hw_plat=7x27A \
    ro.vendor.extension_library=/system/lib/libqc-opt.so

# USB
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp,adb \
    ro.additionalmounts=/storage/sdcard0 \
    ro.emmc.sdcard.partition=19 \
    ro.vold.switchablepair=/storage/sdcard1,/storage/sdcard0 \
    ro.vold.umsdirtyratio=50

# Wi-Fi
PRODUCT_PROPERTY_OVERRIDES += \
    wifi.interface=eth0 \
    wifi.supplicant_scan_interval=15

$(call inherit-product, build/target/product/full_base_telephony.mk)
