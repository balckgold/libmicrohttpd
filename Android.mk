LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_C_INCLUDES += $(LOCAL_PATH)/src/include $(LOCAL_PATH)/src/include/plibc $(LOCAL_PATH)/src/microhttpd

LOCAL_SRC_FILES := \
	src/microhttpd/base64.c \
	src/microhttpd/basicauth.c \
	src/microhttpd/connection.c \
	src/microhttpd/daemon.c \
	src/microhttpd/digestauth.c \
	src/microhttpd/internal.c \
	src/microhttpd/md5.c \
	src/microhttpd/memorypool.c \
	src/microhttpd/postprocessor.c \
	src/microhttpd/reason_phrase.c \
	src/microhttpd/response.c \
	src/microhttpd/tsearch.c

LOCAL_ARM_NEON := true
LOCAL_MODULE := microhttpd
include $(BUILD_SHARED_LIBRARY)
