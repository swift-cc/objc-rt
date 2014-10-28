# OBJC-RT

## Dependencies

This project is dependent on the swift-cc/tools project

## Sources

Open Source Objective-C runtime based on the following Apple Open Sources

[http://www.opensource.apple.com/tarballs/Libc/Libc-997.90.3.tar.gz]()
[http://www.opensource.apple.com/tarballs/dyld/dyld-132.13.tar.gz]()
[http://www.opensource.apple.com/tarballs/objc4/objc4-551.1.tar.gz]()
[http://www.opensource.apple.com/tarballs/xnu/xnu-792.tar.gz]()
[http://www.opensource.apple.com/tarballs/libdispatch/libdispatch-339.92.1.tar.gz]()
[http://www.opensource.apple.com/tarballs/libclosure/libclosure-63.tar.gz]()
[http://www.opensource.apple.com/tarballs/libauto/libauto-185.5.tar.gz]()
[http://www.opensource.apple.com/tarballs/launchd/launchd-842.92.1.tar.gz]()
[http://www.opensource.apple.com/tarballs/cctools/cctools-855.tar.gz]()



## Installation

After cloning this repository run the following

    make install
    
This will download the open source packages above, de-archive them, and create the appropriate symlinks to various directories.

To uninstall and return to cloned state (except for build targets), run the following command

    make uninstall
