# Copyright (C) 2014 The CyanogenMod Project
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

# Boot animation
TARGET_SCREEN_HEIGHT := 2560
TARGET_SCREEN_WIDTH := 1440

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from kingdom_row device
$(call inherit-product, device/lenovo/kingdom_row/kingdom_row.mk)

# Enhanced NFC
$(call inherit-product, vendor/cm/config/nfc_enhanced.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_mini_phone.mk)

PRODUCT_NAME := cm_kingdom_row
PRODUCT_DEVICE := kingdom_row
PRODUCT_BRAND := Lenovo
PRODUCT_MANUFACTURER := Lenovo
PRODUCT_MODEL := Lenovo K920

PRODUCT_GMS_CLIENTID_BASE := android-lenovo

TARGET_CONTINUOUS_SPLASH_ENABLED := true

# Device prop
PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE="kingdom_row" \
    PRODUCT_NAME="kingdom_row" \
    BUILD_FINGERPRINT=“Lenovo/kingdom_row/kingdom_row:5.1.1/LMY48M/5.9.17:userdebug/test-keys" \
    PRIVATE_BUILD_DESC="kingdom_row-userdebug 5.1.1 LMY48M 5.9.17 test-keys"
