#
# Copyright (C) 2023 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Configure core_64_bit.mk
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit common EvolutionX configurations
$(call inherit-product, vendor/evolution/config/common_full_phone.mk)

# Inherit device configurations
$(call inherit-product, device/xiaomi/fuxi/device.mk)

## Device identifier
PRODUCT_DEVICE := fuxi
PRODUCT_NAME := evolution_fuxi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := 2211133G
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_SYSTEM_NAME := 2211133G
PRODUCT_SYSTEM_DEVICE := 2211133G

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="fuxi_global-user 13 TKQ1.221114.001 V14.0.6.0.UMCMIXM release-keys"

BUILD_FINGERPRINT := Xiaomi/fuxi_global/fuxi:13/TKQ1.221114.001/V14.0.6.0.UMCMIXM:userdebug/test-keys

# GMS
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
