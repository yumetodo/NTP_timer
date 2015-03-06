# Makefile for NTP_timer_kai.cpp
# NTP_timer_kai.exe: NTP_timer_kai.cpp
# 	g++ ./NTP_timer/NTP_timer_kai.cpp --input-charset=utf-8 -fexec-charset=CP932 -std=c++11 -O2 -Wall -o NTP_timer_kai.exe -lws2_32 -lwinmm -lwsock32

TARGET 	= NTP_timer_kai.exe
SRCS 	= ./NTP_timer/NTP_timer_kai.cpp

# 基本コマンド
RM 		:= rm
CXX 	:= g++
CC 		:= g++

# デバッグ時とリリース時の微調整
CXX_DEBUG_FLAGS		=	-g -O0
CXX_RELEASE_FLAGS	=	-O2

# 基本オプション
CPPFLAGS = --input-charset=utf-8 -fexec-charset=CP932 -Wall -std=gnu11 -lws2_32 -lwinmm -lwsock32

# make
# debug
.PHONY	: Debug
Debug 	: CXXFLAGS+=$(CXX_DEBUG_FLAGS)
Debug 	: all
# release
.PHONY	: Release
Release	: CXXFLAGS+=$(CXX_RELEASE_FLAGS)
Release	: all

all : $(TARGET)
$(TARGET) : $(SRCS)
		$(CXX) $^ -o $@ $(CXXFLAGS) $(CPPFLAGS)

# make clean
.PHONY: clean
clean:
	rm -f *.o