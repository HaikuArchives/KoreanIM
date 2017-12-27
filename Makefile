
NAME=KoreanIM
TYPE=SHARED
SRCS= \
	src/KoreanInputServerMethod.cpp \
	src/KoreanInputServerLooper.cpp
RSRCS= 
LIBS= intl hangul _APP_ be
LIBPATHS=
SYSTEM_INCLUDE_PATHS=
LOCAL_INCLUDE_PATHS=
OPTIMIZE=
DEFINES=
WARNINGS=ALL
SYMBOLS=
DEBUGGER=TRUE
COMPILER_FLAGS=
LINKER_FLAGS=

all: _APP_ default

DEVEL_DIRECTORY := $(shell findpaths -r "makefile_engine" B_FIND_PATH_DEVELOP_DIRECTORY)
include $(DEVEL_DIRECTORY)/etc/makefile-engine

clean ::
	rm -f _APP_

_APP_: /system/servers/input_server
	ln -s $< $@

