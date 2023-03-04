#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from msm8953_64 device
$(call inherit-product, device/vivo/msm8953_64/device.mk)

PRODUCT_DEVICE := msm8953_64
PRODUCT_NAME := omni_msm8953_64
PRODUCT_BRAND := vivo
PRODUCT_MODEL := vivo PD1730
PRODUCT_MANUFACTURER := vivo

PRODUCT_GMS_CLIENTID_BASE := android-vivo

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="msm8953_64-user 8.1.0 OPM1.171019.011 eng.compil.20190625.231648 release-keys"

BUILD_FINGERPRINT := vivo/PD1730/PD1730:8.1.0/OPM1.171019.011/compil06252316:user/release-keys
