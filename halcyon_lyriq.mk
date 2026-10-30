#
# SPDX-FileCopyrightText: LineageOS
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device makefile.
$(call inherit-product, device/motorola/lyriq/device.mk)

# Inherit some common halcyon stuff.
$(call inherit-product, vendor/halcyon/config/common.mk)

TARGET_BOOT_ANIMATION_RES := 1080

PRODUCT_NAME := halcyon_lyriq
PRODUCT_DEVICE := lyriq
PRODUCT_MANUFACTURER := Motorola
PRODUCT_BRAND := motorola
PRODUCT_MODEL := motorola edge 40

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    DeviceName=lyriq \
    BuildDesc="lyriq_g-user 15 V1TLS35.73-60-3-16 a1f11f release-keys" \
    BuildFingerprint=motorola/lyriq_g/lyriq:15/V1TLS35.73-60-3-16/a1f11f:user/release-keys
