#
# Copyright (C) 2024 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common TWRP stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from Tecno-CK8n device
$(call inherit-product, device/tecno/CK8n/device.mk)

PRODUCT_DEVICE := CK8n
PRODUCT_NAME := twrp_CK8n
PRODUCT_BRAND := Tecno
PRODUCT_MODEL := Tecno Camon 20 Pro
PRODUCT_MANUFACTURER := tecno

BOARD_USES_RECOVERY_AS_BOOT := false
TARGET_FORCE_PREBUILT_KERNEL = true
PRODUCT_OTA_ENFORCE_VINTF_KERNEL_REQUIREMENTS := false

PRODUCT_GMS_CLIENTID_BASE := android-tecno

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vnd_CK8n_h931-user 12 SP1A.210812.016 537496 release-keys" \
    TARGET_DEVICE=Tecno-CK8n \
    PRODUCT_NAME=CK8n-GL

BUILD_FINGERPRINT := "TECNO/CK8n-GL/TECNO-CK8n:12/SP1A.210812.016/230817V1839:user/release-keys"
