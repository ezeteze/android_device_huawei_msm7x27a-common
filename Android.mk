LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_MSM7X27A_COMMON),true)
include $(call all-makefiles-under,$(LOCAL_PATH))
endif
