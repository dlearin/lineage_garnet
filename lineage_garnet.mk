#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from garnet device
$(call inherit-product, device/xiaomi/garnet/device.mk)

PRODUCT_DEVICE := garnet
PRODUCT_NAME := lineage_garnet
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := mainline
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="missi_phone_eea-user 14 UKQ1.231003.002 V816.0.8.0.UNREUXM release-keys"

BUILD_FINGERPRINT := Android/missi_phone_eea/missi:14/UKQ1.231003.002/V816.0.8.0.UNREUXM:user/release-keys
