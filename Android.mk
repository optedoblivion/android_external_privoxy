LOCAL_PATH:= $(call my-dir)

#============== Build PCRE3.4 static library ============
LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := libpcre3.4
#LOCAL_MODULE_TAGS := eng

LOCAL_SRC_FILES := \
	pcre/maketables.c \
	pcre/study.c \
	pcre/pcre.c \
	pcre/pcreposix.c \
	pcre/chartables.c \
	pcre/get.c

#LOCAL_C_INCLUDES := \
#        $(LOCAL_PATH)

LOCAL_CFLAGS := \
        -std=gnu99 \
        -Werror=implicit

#CONFIG_DIR := /system/etc/pcre
#
#LOCAL_CFLAGS += -DPKGDATADIR="\"$(CONFIG_DIR)\""

include $(BUILD_STATIC_LIBRARY)

include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
	filters.c \
	parsers.c \
	cgiedit.c \
	jcc.c \
	amiga.c \
	actions.c \
	miscutil.c \
	gateway.c \
	list.c \
	encode.c \
	errlog.c \
	cgisimple.c \
	ssplit.c \
	jbsockets.c \
	pcrs.c \
	urlmatch.c \
	cgi.c \
	loadcfg.c \
	deanimate.c \
	loaders.c 

LOCAL_C_INCLUDES := \
	$(LOCAL_PATH)/pcre \
        $(LOCAL_PATH)/../zlib

LOCAL_CFLAGS := \
	-std=gnu99 \
	-Werror=implicit

CONFIG_DIR := /system/etc/privoxy

LOCAL_CFLAGS += -DPKGDATADIR="\"$(CONFIG_DIR)\"" \
	-DHAVE_CONFIG_H

LOCAL_MODULE := privoxy
LOCAL_MODULE_PATH := $(TARGET_OUT_OPTIONAL_EXECUTABLES)
LOCAL_MODULE_TAGS := optional
LOCAL_SHARED_LIBRARIES += libz
LOCAL_STATIC_LIBRARIES += libpcre3.4

include $(BUILD_EXECUTABLE)

#============== Copy config file ============
include $(CLEAR_VARS)
LOCAL_MODULE := config
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_ETC)/privoxy
LOCAL_SRC_FILES := $(LOCAL_MODULE)
include $(BUILD_PREBUILT)

#============== Copy match-all.action file ============
include $(CLEAR_VARS)
LOCAL_MODULE := match-all.action
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_ETC)/privoxy
LOCAL_SRC_FILES := $(LOCAL_MODULE)
include $(BUILD_PREBUILT)

#============== Copy user.action file ============
include $(CLEAR_VARS)
LOCAL_MODULE := user.action
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_ETC)/privoxy
LOCAL_SRC_FILES := $(LOCAL_MODULE)
include $(BUILD_PREBUILT)

#============== Copy user.filter file ============
include $(CLEAR_VARS)
LOCAL_MODULE := user.filter
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_ETC)/privoxy
LOCAL_SRC_FILES := $(LOCAL_MODULE)
include $(BUILD_PREBUILT)

#============== Copy default.action file ============
include $(CLEAR_VARS)
LOCAL_MODULE := default.action
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_ETC)/privoxy
LOCAL_SRC_FILES := $(LOCAL_MODULE)
include $(BUILD_PREBUILT)

#============== Copy default.filter file ============
include $(CLEAR_VARS)
LOCAL_MODULE := default.filter
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_ETC)/privoxy
LOCAL_SRC_FILES := $(LOCAL_MODULE)
include $(BUILD_PREBUILT)

#============== Copy trust file ============
include $(CLEAR_VARS)
LOCAL_MODULE := trust
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_ETC)/privoxy
LOCAL_SRC_FILES := $(LOCAL_MODULE)
include $(BUILD_PREBUILT)

#============== Copy templates directory ============
include $(CLEAR_VARS)
LOCAL_MODULE := templates/blocked
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_ETC)/privoxy
LOCAL_SRC_FILES := $(LOCAL_MODULE)
include $(BUILD_PREBUILT)

#============== Copy templates directory ============
include $(CLEAR_VARS)
LOCAL_MODULE := templates/cgi-error-404
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_ETC)/privoxy
LOCAL_SRC_FILES := $(LOCAL_MODULE)
include $(BUILD_PREBUILT)

#============== Copy templates directory ============
include $(CLEAR_VARS)
LOCAL_MODULE := templates/cgi-error-bad-param
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_ETC)/privoxy
LOCAL_SRC_FILES := $(LOCAL_MODULE)
include $(BUILD_PREBUILT)

#============== Copy templates directory ============
include $(CLEAR_VARS)
LOCAL_MODULE := templates/cgi-error-disabled
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_ETC)/privoxy
LOCAL_SRC_FILES := $(LOCAL_MODULE)
include $(BUILD_PREBUILT)

#============== Copy templates directory ============
include $(CLEAR_VARS)
LOCAL_MODULE := templates/cgi-error-file
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_ETC)/privoxy
LOCAL_SRC_FILES := $(LOCAL_MODULE)
include $(BUILD_PREBUILT)

#============== Copy templates directory ============
include $(CLEAR_VARS)
LOCAL_MODULE := templates/cgi-error-file-read-only
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_ETC)/privoxy
LOCAL_SRC_FILES := $(LOCAL_MODULE)
include $(BUILD_PREBUILT)

#============== Copy templates directory ============
include $(CLEAR_VARS)
LOCAL_MODULE := templates/cgi-error-modified
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_ETC)/privoxy
LOCAL_SRC_FILES := $(LOCAL_MODULE)
include $(BUILD_PREBUILT)

#============== Copy templates directory ============
include $(CLEAR_VARS)
LOCAL_MODULE := templates/cgi-error-parse
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_ETC)/privoxy
LOCAL_SRC_FILES := $(LOCAL_MODULE)
include $(BUILD_PREBUILT)

#============== Copy templates directory ============
include $(CLEAR_VARS)
LOCAL_MODULE := templates/cgi-style.css
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_ETC)/privoxy
LOCAL_SRC_FILES := $(LOCAL_MODULE)
include $(BUILD_PREBUILT)

#============== Copy templates directory ============
include $(CLEAR_VARS)
LOCAL_MODULE := templates/connect-failed
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_ETC)/privoxy
LOCAL_SRC_FILES := $(LOCAL_MODULE)
include $(BUILD_PREBUILT)

#============== Copy templates directory ============
include $(CLEAR_VARS)
LOCAL_MODULE := templates/connection-timeout
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_ETC)/privoxy
LOCAL_SRC_FILES := $(LOCAL_MODULE)
include $(BUILD_PREBUILT)

#============== Copy templates directory ============
include $(CLEAR_VARS)
LOCAL_MODULE := templates/default
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_ETC)/privoxy
LOCAL_SRC_FILES := $(LOCAL_MODULE)
include $(BUILD_PREBUILT)

#============== Copy templates directory ============
include $(CLEAR_VARS)
LOCAL_MODULE := templates/edit-actions-add-url-form
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_ETC)/privoxy
LOCAL_SRC_FILES := $(LOCAL_MODULE)
include $(BUILD_PREBUILT)

#============== Copy templates directory ============
include $(CLEAR_VARS)
LOCAL_MODULE := templates/edit-actions-for-url
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_ETC)/privoxy
LOCAL_SRC_FILES := $(LOCAL_MODULE)
include $(BUILD_PREBUILT)

#============== Copy templates directory ============
include $(CLEAR_VARS)
LOCAL_MODULE := templates/edit-actions-for-url-filter
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_ETC)/privoxy
LOCAL_SRC_FILES := $(LOCAL_MODULE)
include $(BUILD_PREBUILT)

#============== Copy templates directory ============
include $(CLEAR_VARS)
LOCAL_MODULE := templates/edit-actions-list
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_ETC)/privoxy
LOCAL_SRC_FILES := $(LOCAL_MODULE)
include $(BUILD_PREBUILT)

#============== Copy templates directory ============
include $(CLEAR_VARS)
LOCAL_MODULE := templates/edit-actions-list-button
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_ETC)/privoxy
LOCAL_SRC_FILES := $(LOCAL_MODULE)
include $(BUILD_PREBUILT)

#============== Copy templates directory ============
include $(CLEAR_VARS)
LOCAL_MODULE := templates/edit-actions-list-section
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_ETC)/privoxy
LOCAL_SRC_FILES := $(LOCAL_MODULE)
include $(BUILD_PREBUILT)

#============== Copy templates directory ============
include $(CLEAR_VARS)
LOCAL_MODULE := templates/edit-actions-list-url
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_ETC)/privoxy
LOCAL_SRC_FILES := $(LOCAL_MODULE)
include $(BUILD_PREBUILT)

#============== Copy templates directory ============
include $(CLEAR_VARS)
LOCAL_MODULE := templates/edit-actions-remove-url-form
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_ETC)/privoxy
LOCAL_SRC_FILES := $(LOCAL_MODULE)
include $(BUILD_PREBUILT)

#============== Copy templates directory ============
include $(CLEAR_VARS)
LOCAL_MODULE := templates/edit-actions-url-form
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_ETC)/privoxy
LOCAL_SRC_FILES := $(LOCAL_MODULE)
include $(BUILD_PREBUILT)

#============== Copy templates directory ============
include $(CLEAR_VARS)
LOCAL_MODULE := templates/forwarding-failed
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_ETC)/privoxy
LOCAL_SRC_FILES := $(LOCAL_MODULE)
include $(BUILD_PREBUILT)

#============== Copy templates directory ============
include $(CLEAR_VARS)
LOCAL_MODULE := templates/gen-templates-for-make.sh
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_ETC)/privoxy
LOCAL_SRC_FILES := $(LOCAL_MODULE)
include $(BUILD_PREBUILT)

#============== Copy templates directory ============
include $(CLEAR_VARS)
LOCAL_MODULE := templates/mod-local-help
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_ETC)/privoxy
LOCAL_SRC_FILES := $(LOCAL_MODULE)
include $(BUILD_PREBUILT)

#============== Copy templates directory ============
include $(CLEAR_VARS)
LOCAL_MODULE := templates/mod-support-and-service
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_ETC)/privoxy
LOCAL_SRC_FILES := $(LOCAL_MODULE)
include $(BUILD_PREBUILT)

#============== Copy templates directory ============
include $(CLEAR_VARS)
LOCAL_MODULE := templates/mod-title
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_ETC)/privoxy
LOCAL_SRC_FILES := $(LOCAL_MODULE)
include $(BUILD_PREBUILT)

#============== Copy templates directory ============
include $(CLEAR_VARS)
LOCAL_MODULE := templates/mod-unstable-warning
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_ETC)/privoxy
LOCAL_SRC_FILES := $(LOCAL_MODULE)
include $(BUILD_PREBUILT)

#============== Copy templates directory ============
include $(CLEAR_VARS)
LOCAL_MODULE := templates/no-server-data
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_ETC)/privoxy
LOCAL_SRC_FILES := $(LOCAL_MODULE)
include $(BUILD_PREBUILT)

#============== Copy templates directory ============
include $(CLEAR_VARS)
LOCAL_MODULE := templates/no-such-domain
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_ETC)/privoxy
LOCAL_SRC_FILES := $(LOCAL_MODULE)
include $(BUILD_PREBUILT)

#============== Copy templates directory ============
include $(CLEAR_VARS)
LOCAL_MODULE := templates/show-request
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_ETC)/privoxy
LOCAL_SRC_FILES := $(LOCAL_MODULE)
include $(BUILD_PREBUILT)

#============== Copy templates directory ============
include $(CLEAR_VARS)
LOCAL_MODULE := templates/show-status
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_ETC)/privoxy
LOCAL_SRC_FILES := $(LOCAL_MODULE)
include $(BUILD_PREBUILT)

#============== Copy templates directory ============
include $(CLEAR_VARS)
LOCAL_MODULE := templates/show-status-file
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_ETC)/privoxy
LOCAL_SRC_FILES := $(LOCAL_MODULE)
include $(BUILD_PREBUILT)

#============== Copy templates directory ============
include $(CLEAR_VARS)
LOCAL_MODULE := templates/show-url-info
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_ETC)/privoxy
LOCAL_SRC_FILES := $(LOCAL_MODULE)
include $(BUILD_PREBUILT)

#============== Copy templates directory ============
include $(CLEAR_VARS)
LOCAL_MODULE := templates/show-version
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_ETC)/privoxy
LOCAL_SRC_FILES := $(LOCAL_MODULE)
include $(BUILD_PREBUILT)

#============== Copy templates directory ============
include $(CLEAR_VARS)
LOCAL_MODULE := templates/toggle
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_ETC)/privoxy
LOCAL_SRC_FILES := $(LOCAL_MODULE)
include $(BUILD_PREBUILT)

#============== Copy templates directory ============
include $(CLEAR_VARS)
LOCAL_MODULE := templates/toggle-mini
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_ETC)/privoxy
LOCAL_SRC_FILES := $(LOCAL_MODULE)
include $(BUILD_PREBUILT)

#============== Copy templates directory ============
include $(CLEAR_VARS)
LOCAL_MODULE := templates/untrusted
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_ETC)/privoxy
LOCAL_SRC_FILES := $(LOCAL_MODULE)
include $(BUILD_PREBUILT)

#============== Copy templates directory ============
include $(CLEAR_VARS)
LOCAL_MODULE := templates/url-info-osd.xml
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_ETC)/privoxy
LOCAL_SRC_FILES := $(LOCAL_MODULE)
include $(BUILD_PREBUILT)

