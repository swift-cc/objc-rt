#!/bin/bash

mkdir obj
mkdir -p usr/include/System/machine
mkdir -p usr/include/System/arm
mkdir -p usr/include/dispatch
mkdir -p usr/include/mach-o
mkdir -p usr/include/mach/arm
mkdir -p usr/include/servers
mkdir -p usr/include/libkern
mkdir -p usr/include/architecture/arm

cp libauto/auto_zone.h usr/include/.
cp libclosure/Block_private.h usr/include/.
cp libdispatch/private/*.h usr/include/dispatch/.
cp dyld/include/mach-o/dyld_priv.h usr/include/mach-o/.
cp dyld/include/objc-shared-cache.h usr/include/.
cp Libc/pthreads/pthread_machdep.h usr/include/System/.
cp xnu/osfmk/machine/cpu_capabilities.h usr/include/System/machine/.
cp xnu/osfmk/arm/cpu_capabilities.h usr/include/System/arm/.
cp launchd/liblaunch/vproc_priv.h usr/include/.
cp xnu/osfmk/mach/shared_region.h usr/include/mach/.
cp mach_vm.h usr/include/mach/.
cp xnu/EXTERNAL_HEADERS/architecture/arm/cframe.h usr/include/architecture/arm/.
cp xnu/osfmk/mach/arm/_structs.h usr/include/mach/arm/.

# touch usr/include/libc-features.h
touch usr/include/objc-probes.h
touch usr/include/servers/bootstrap.h
# touch usr/include/magmallocProvider.h
# touch usr/include/libkern/OSCrossEndian.h

pushd objc
ln -s runtime objc
popd
ln -s objc/runtime Foundation

patch Libc/include/sys/cdefs.h < patches/cdefs.patch
patch objc/runtime/objc-block-trampolines.mm < patches/objc-block-trampolines.patch
patch objc/runtime/objc-os.h < patches/objc-os.h.patch
patch Libc/arm/sys/OSAtomic-v4.c < patches/OSAtomic-v4.c.patch  
patch Libc/pthreads/thread_setup.c < patches/thread_setup.c.patch
patch objc/runtime/a1a2-blocktramps-arm.s < patches/a1a2-blocktramps-arm.s.patch
patch objc/runtime/a2a3-blocktramps-arm.s< patches/a2a3-blocktramps-arm.s.patch
patch objc/runtime/Messengers.subproj/objc-msg-arm.s < patches/objc-msg-arm.s.patch

# intercept this file with our own so that we can inject things before being included
mv objc/runtime/objc-private.h objc/runtime/objc-private.original.h

# run mach interface generation steps
pushd Libc/gen
mig asl_ipc.defs
popd

# copy subproject make files into their respective folders
echo "Installing subproject makefiles"
cp makefiles/libdispatch/* libdispatch/.
cp makefiles/xnu/* xnu/.

# pushd libdispatch
# make install
# popd

# pushd xnu
# make install
# popd
