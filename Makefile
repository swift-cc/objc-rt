#****************************************************************************
# Copyright (c) 2014 Chukong Technologies Inc.
#
# http://www.cocos2d-x.org
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in
# all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
# THE SOFTWARE.
#****************************************************************************

all: libobjc-rt.a

SOURCES = \
	objc/runtime/Protocol.mm \
	objc/runtime/NSObject.mm \
	objc/runtime/a1a2-blocktramps-arm.s \
	objc/runtime/a2a3-blocktramps-arm.s \
	objc/runtime/Messengers.subproj/objc-msg-arm.s \
	objc/runtime/OldClasses.subproj/List.m \
	objc/runtime/objc-auto-dump.m \
	objc/runtime/objc-auto.m \
	objc/runtime/objc-class-old.m \
	objc/runtime/objc-file-old.m \
	objc/runtime/objc-runtime-old.m \
	objc/runtime/Object.m \
	objc/runtime/Accessors.subproj/objc-accessors.mm \
	objc/runtime/hashtable2.mm \
	objc/runtime/maptable.mm \
	objc/runtime/objc-block-trampolines.mm \
	objc/runtime/objc-exception.mm \
	objc/runtime/objc-externalref.mm \
	objc/runtime/objc-file.mm \
	objc/runtime/objc-initialize.mm \
	objc/runtime/objc-layout.mm \
	objc/runtime/objc-load.mm \
	objc/runtime/objc-loadmethod.mm \
	objc/runtime/objc-lockdebug.mm \
	objc/runtime/objc-opt.mm \
	objc/runtime/objc-os.mm \
	objc/runtime/objc-references.mm \
	objc/runtime/objc-rtp.mm \
	objc/runtime/objc-sel-set.mm \
	objc/runtime/objc-sel.mm \
	objc/runtime/objc-sync.mm \
	objc/runtime/objc-typeencoding.mm \
	objc/runtime/objc-weak.mm \
	objc/runtime/objc-errors.mm

	#objc/runtime/objc-class.mm
	#objc/runtime/objc-cache.mm
    #objc/runtime/objc-runtime.mm
	#objc/runtime/objc-runtime-new.mm

clean:
	-rm -rf obj/*
	-rm libobjc-rt.*

libobjc-rt.a:
	swift-cc.py --lib libobjc-rt.a $(SOURCES)


