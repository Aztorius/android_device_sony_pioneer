#
# Copyright (C) 2018 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from pioneer device
$(call inherit-product, device/sony/pioneer/device.mk)

TARGET_INCLUDE_LIVE_WALLPAPERS := false
TARGET_INCLUDE_STOCK_ARCORE := false
TARGET_FACE_UNLOCK_SUPPORTED := false

# Inherit some common PixelExperience stuff.
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

TARGET_BOOT_ANIMATION_RES := 1080
TARGET_GAPPS_ARCH := arm64

# Device identifier. This must come after all inclusions
PRODUCT_NAME := aosp_pioneer
PRODUCT_DEVICE := pioneer
PRODUCT_BRAND := Sony
PRODUCT_MODEL := Xperia XA2
PRODUCT_MANUFACTURER := Sony

PRODUCT_SYSTEM_NAME := pioneer

PRODUCT_GMS_CLIENTID_BASE := android-sony

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="H3113-user 8.0.0 50.1.A.4.76 2209478692 release-keys"

BUILD_FINGERPRINT := Sony/H3113/H3113:8.0.0/50.1.A.4.76/2209478692:user/release-keys
