# Copyright (C) 2017 The LineageIS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

LOCAL_PATH := $(call my-dir)

ifeq ($(BOARD_VENDOR),sony)
ifeq ($(BOARD_VENDOR_PLATFORM),shinano)

include $(CLEAR_VARS)
LOCAL_MODULE := libta
LOCAL_MODULE_OWNER := sony
LOCAL_SRC_FILES := proprietary/vendor/lib/libta.so
LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR_SHARED_LIBRARIES)
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libtime_genoff
LOCAL_MODULE_OWNER := sony
LOCAL_SRC_FILES := proprietary/vendor/lib/libtime_genoff.so
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR_SHARED_LIBRARIES)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE_TAGS   := eng
LOCAL_MODULE        := tad_static
LOCAL_MODULE_CLASS  := BIN
LOCAL_SRC_FILES     := proprietary/sbin/tad_static
LOCAL_MODULE_TAGS   := optional
LOCAL_MODULE_PATH   := $(TARGET_ROOT_OUT_SBIN)
LOCAL_ADDITIONAL_DEPENDENCIES := $(TARGET_ROOT_OUT_SBIN)/wait4tad_static
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE_TAGS   := eng
LOCAL_MODULE        := wait4tad_static
LOCAL_MODULE_CLASS  := BIN
LOCAL_SRC_FILES     := proprietary/sbin/wait4tad_static
LOCAL_MODULE_TAGS   := optional
LOCAL_MODULE_PATH   := $(TARGET_ROOT_OUT_SBIN)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := QPerformance
LOCAL_MODULE_OWNER := sony
LOCAL_SRC_FILES := proprietary/framework/QPerformance.jar
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_MODULE_SUFFIX := .jar
include $(BUILD_PREBUILT)

endif
endif
