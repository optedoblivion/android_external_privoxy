#!/bin/bash

for file in `ls`; do
    echo "#============== Copy templates directory ============"
    echo "include \$(CLEAR_VARS)"
    echo "LOCAL_MODULE := templates/$file"
    echo "LOCAL_MODULE_TAGS := optional"
    echo "LOCAL_MODULE_CLASS := ETC"
    echo "LOCAL_MODULE_PATH := \$(TARGET_OUT_ETC)/privoxy/templates"
    echo "LOCAL_SRC_FILES := \$(LOCAL_MODULE)"
    echo "include \$(BUILD_PREBUILT)"
    echo
done
