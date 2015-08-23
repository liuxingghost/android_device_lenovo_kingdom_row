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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from kingdom_row device
$(call inherit-product, device/lenovo/kingdom_row/kingdom_row.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/eos/config/common.mk)
$(call inherit-product, vendor/eos/config/common_full_phone.mk)

PRODUCT_NAME := eos_kingdom_row
PRODUCT_DEVICE := kingdom_row
PRODUCT_MANUFACTURER := LENOVO
PRODUCT_MODEL := Lenovo K920

PRODUCT_GMS_CLIENTID_BASE := android-lenovo

PRODUCT_BRAND := Lenovo
TARGET_VENDOR := lenovo
TARGET_VENDOR_PRODUCT_NAME := kingdom_row
TARGET_VENDOR_DEVICE_NAME := kingdom_row
PRODUCT_BUILD_PROP_OVERRIDES += TARGET_DEVICE=kingdom_row PRODUCT_NAME=kingdom_row

TARGET_CONTINUOUS_SPLASH_ENABLED := true

## Use the latest approved GMS identifiers unless running a signed build
ifneq ($(SIGN_BUILD),true)
PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT=Lenovo/kingdom_row/kingdom_row:5.0.2/LRX22G/K920_S246_150520_ROW:user/release-keys \
    PRIVATE_BUILD_DESC="kingdom_row/kingdom_row-user 5.0.2 LRX22G/K920_S246_150520_ROW release-keys"
endif

# Copy device specific prebuilt files.
PRODUCT_COPY_FILES += \
    vendor/eos/prebuilt/common/bootanimations/BOOTANIMATION-1080x1920.zip:system/media/bootanimation.zip
