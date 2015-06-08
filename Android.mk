LOCAL_PATH:= $(call my-dir)

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
	$(LOCAL_PATH)/../pcre \
        $(LOCAL_PATH)/../pcre/dist \
        $(LOCAL_PATH)/../zlib

LOCAL_CFLAGS := \
	-std=gnu99 \
	-Werror=implicit

CONFIG_DIR := /system/etc

LOCAL_CFLAGS += -DPKGDATADIR="\"$(CONFIG_DIR)\""

LOCAL_MODULE := privoxy
LOCAL_MODULE_PATH := $(TARGET_OUT_OPTIONAL_EXECUTABLES)
LOCAL_MODULE_TAGS := eng
LOCAL_SHARED_LIBRARIES += libpcre libz

include $(BUILD_EXECUTABLE)

#============== Copy Config File ============

#include $(CLEAR_VARS)
#LOCAL_MODULE := privoxy.conf
#LOCAL_MODULE_TAGS := optional
#LOCAL_MODULE_CLASS := ETC
#LOCAL_MODULE_PATH := $(TARGET_OUT_ETC)
#LOCAL_SRC_FILES := $(LOCAL_MODULE)
#include $(BUILD_PREBUILT)


