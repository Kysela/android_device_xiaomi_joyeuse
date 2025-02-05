#
# Copyright (C) 2020 ATGDroid <bythedroid@gmail.com>
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

# Release name
PRODUCT_RELEASE_NAME := joyeuse
DEVICE_PATH := device/xiaomi/joyeuse

$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

#PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,$(LOCAL_PATH)/recovery/root,recovery/root)

## Device identifier. This must come after all inclusions
BOARD_VENDOR := Redmi
PRODUCT_DEVICE := joyeuse
PRODUCT_NAME := omni_joyeuse
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi Note 9 Pro
PRODUCT_MANUFACTURER := Xiaomi
TARGET_VENDOR := Redmi
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# HACK: Set vendor patch level
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.build.security_patch=2099-12-31
