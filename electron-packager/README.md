# Electron-Packager Drone.io Plugin
## Settings:
- `APPNAME` - set name of app or would be called **app** !!!
- `PLATFORM` - destination platform (`darwin, linux, mas, win32`)
- `ARCH` - destination arch (`ia32, x64, armv7l, arm64, mips64el`)
- `IGNORE` - pattern or single file to ignore to package
- `PARAMS` - additionals parameters for electron-packager
- `TARGZ` - pack output into targz (only accept the field `true`)
- `COPYTO` - copy out of e-p for example to send via s3, if `TARGZ` is true copy the archive