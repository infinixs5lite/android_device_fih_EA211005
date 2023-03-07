#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Installs gsi keys into ramdisk, to boot a developer GSI with verified boot.
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Inherit some common twrp stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from EA211005 device
$(call inherit-product, device/fih/EA211005/device.mk)

PRODUCT_DEVICE := EA211005
PRODUCT_NAME := twrp_EA211005
PRODUCT_BRAND := ATT
PRODUCT_MODEL := EA211005
PRODUCT_MANUFACTURER := fih

PRODUCT_GMS_CLIENTID_BASE := android-att-us-rvc3

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="FLC_01US-user 11 RP1A.200720.011 01US_2_080 release-keys"

BUILD_FINGERPRINT := ATT/EA211005/EA211005:11/RP1A.200720.011/01US_2_080:user/release-keys
