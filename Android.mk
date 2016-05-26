LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := traceroute

LOCAL_CFLAGS := -D_GNU_SOURCE -fPIE

LOCAL_LDFLAGS := -fPIE -pie

LOCAL_C_INCLUDES := \
	$(LOCAL_PATH)/include \
	$(LOCAL_PATH)/libsupp \
	$(LOCAL_PATH)/traceroute \

LOCAL_SRC_FILES := \
	libsupp/clif.c \
	traceroute/mod-icmp.c \
	traceroute/time.c \
	traceroute/mod-tcpconn.c \
	traceroute/mod-raw.c \
	traceroute/poll.c \
	traceroute/extension.c \
	traceroute/csum.c \
	traceroute/module.c \
	traceroute/traceroute.c \
	traceroute/as_lookups.c \
	traceroute/mod-udp.c \
	traceroute/mod-tcp.c \
	traceroute/random.c \
	traceroute/mod-dccp.c \

include $(BUILD_EXECUTABLE)
