USE_CAMERA_STUB := false

# CPU and Platform
TARGET_BOARD_PLATFORM := msm7x27a
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200

TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true

TARGET_ARCH_VARIANT := armv7-a-neon

ARCH_ARM_HAVE_TLS_REGISTER := true

BOARD_USES_QCOM_HARDWARE := true
COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE

TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp

# Optimisations used by Qualcomm
TARGET_CORTEX_CACHE_LINE_32 := true
TARGET_USE_SPARROW_BIONIC_OPTIMIZATION := true
TARGET_AVOID_DRAW_TEXTURE_EXTENSION := true
TARGET_USES_16BPPSURFACE_FOR_OPAQUE := true

TARGET_SPECIFIC_HEADER_PATH := device/huawei/msm7x27a-common/include

# Audio
TARGET_PROVIDES_LIBAUDIO := true

# Lights
TARGET_USE_HUAWEI_LIBLIGHTS := true

# Camera
BOARD_NEEDS_MEMORYHEAPPMEM := true
COMMON_GLOBAL_CFLAGS += -DICS_CAMERA_BLOB

# GPS
BOARD_USES_QCOM_GPS := true
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := msm7x27a
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000

# Graphics
BOARD_EGL_CFG := device/huawei/msm7x27a-common/configs/egl.cfg
USE_OPENGL_RENDERER := true
BOARD_AVOID_DRAW_TEXTURE_EXTENSION := true
BOARD_USE_SKIA_LCDTEXT := true
TARGET_GRALLOC_USES_ASHMEM := true

# Qcom Display
TARGET_NO_HW_VSYNC := true
COMMON_GLOBAL_CFLAGS += -DGENLOCK_IOC_DREADLOCK -DANCIENT_GL

# Touchscreen
BOARD_USE_LEGACY_TOUCHSCREEN := true

# Video
COMMON_GLOBAL_CFLAGS += -DQCOM_ICS_DECODERS -DQCOM_NO_SECURE_PLAYBACK

# Web Rendering
WITH_JIT := true
ENABLE_JSC_JIT := true
ENABLE_WEBGL := true
TARGET_FORCE_CPU_UPLOAD := true
HTTP := chrome
JS_ENGINE := v8

# USB
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/class/android_usb/android0/f_mass_storage/lun%d/file
TARGET_USE_CUSTOM_SECOND_LUN_NUM := 1
BOARD_USE_USB_MASS_STORAGE_SWITCH := true
BOARD_VOLD_MAX_PARTITIONS := 19
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true

# FM Radio
BOARD_HAVE_FM_RADIO := true
BOARD_FM_DEVICE := bcm4330
BOARD_GLOBAL_CFLAGS += -DHAVE_FM_RADIO

# Wi-Fi
#WIFI_BAND 							:= 802_11_ABG
BOARD_WLAN_DEVICE 					:= bcmdhd
WPA_SUPPLICANT_VERSION 				:= VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER 		:= NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB 	:= lib_driver_cmd_bcmdhd
BOARD_HOSTAPD_DRIVER 				:= NL80211
BOARD_HOSTAPD_PRIVATE_LIB 			:= lib_driver_cmd_bcmdhd
WIFI_DRIVER_MODULE_PATH     		:= "/system/lib/modules/bcmdhd.ko"
WIFI_DRIVER_MODULE_NAME     		:= "bcmdhd"
WIFI_DRIVER_MODULE_ARG      		:= "firmware_path=/system/wifi/fw_4330_b2.bin nvram_path=/system/wifi/nvram_4330.txt"
WIFI_DRIVER_FW_PATH_PARAM   		:= "/sys/module/bcmdhd/parameters/firmware_path"
WIFI_DRIVER_FW_PATH_STA     		:= "/system/wifi/fw_4330_b2.bin"
WIFI_DRIVER_FW_PATH_AP      		:= "/system/wifi/fw_4330_b2.bin"
#WIFI_DRIVER_FW_PATH_P2P     := "/system/wifi/fw_4330_b2.bin"
BOARD_LEGACY_NL80211_STA_EVENTS		:= true
BOARD_USE_SERNUM_FOR_MAC 			:= true

# Kernel 
TARGET_KERNEL_SOURCE := kernel/huawei/G300
BOARD_KERNEL_CMDLINE := androidboot.hardware=huawei no_console_suspend=true
BOARD_KERNEL_BASE := 0x00200000
BOARD_PAGE_SIZE := 2048
BOARD_FORCE_RAMDISK_ADDRESS := 0x01400000

# Recovery
#BOARD_TOUCH_RECOVERY := true
TARGET_RECOVERY_PIXEL_FORMAT := RGBX_8888
BOARD_CUSTOM_GRAPHICS := ../../../device/huawei/msm7x27a-common/recovery/graphics.c
BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/huawei/msm7x27a-common/recovery/recovery-keys.c
TARGET_RECOVERY_INITRC := device/huawei/msm7x27a-common/recovery/etc/init.rc
BOARD_UMS_LUNFILE := /sys/class/android_usb/android0/f_mass_storage/lun%d/file

