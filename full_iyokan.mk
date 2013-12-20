# Copyright (C) 2011-2013 The CyanogenMod Project
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
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from iyokan device
$(call inherit-product, device/semc/iyokan/iyokan.mk)

# Boot Animation
TARGET_SCREEN_HEIGHT := 854
TARGET_SCREEN_WIDTH := 480

# Set those variables here to overwrite the inherited values.
PRODUCT_NAME := full_iyokan
PRODUCT_DEVICE := iyokan
PRODUCT_BRAND := SEMC
PRODUCT_MANUFACTURER := SEMC
PRODUCT_MODEL := Xperia Pro
PRODUCT_PACKAGES += Apollo

$(call inherit-product, device/semc/iyokan/iyokan.mk)
$(call inherit-product-if-exists, vendor/semc/iyokan/iyokan-vendor.mk)
