LOCAL_PATH := device/lenovo/S650_ROW

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/kernel:kernel \
    $(LOCAL_PATH)/fstab.mt6582:root/fstab.mt6582

$(call inherit-product, build/target/product/full.mk)

PRODUCT_NAME := S650_ROW
