# Google Camera Patch for kenzo/kate
This module fixes some issues currently encountered on Redmi Note 3 and Redmi Note 3 Pro when using modified Google Camera Version 5.x and 6.x by replacing original cam libraries with modified one's.
It also enables some features not present in the system of custom ROMs.

## Working
Currently this module replaces libs/files in `/system/etc`, `/system/lib`, `/system/lib64`, `/system/usr`, `/system/vendor/lib`.

## Compatibility
This module is compatible with Android 8.0+ (All custom ROM's, not with stock).

## Current List of Patches
1. Enables 60 FPS video recording
2. Fixes green tint on front camera
3. Fixes lag/stutters in viewfinder
4. 4k DCI Support
5. Increased Maximum ISO value - 12,800
6. Constant framerates when shooting videos
7. Improved Denoising for 30 fps videos

## Who did what ?
- [**SerJo87**](https://forum.xda-developers.com/member.php?u=5074663) and [**Kiraryu**](https://forum.xda-developers.com/member.php?u=8549930) modified the the initial libs that enable 60fps recording. (Currently not using the libs)
- [**Savitar(defcomg)**](https://forum.xda-developers.com/member.php?u=377973) edited the libs to increase maximum ISO and improve denoising.
- [**Kuro Shi**](https://t.me/Kuro_Shi_Sama) modified the libs that fix green tint.
- [**Ayush**](https://t.me/AyushR1) modified libs for lag fix.
- [**Krittin**](https://forum.xda-developers.com/member.php?u=5022949) provided 4k DCI support and additional info about libs, much thanks buddy.
- [**Abhishek**](https://t.me/BoogeyWoogey69) created the magisk module.

Huge thanks to everyone who helped to make this module possible !

## Special Thanks
[***topjohnwu***](https://github.com/topjohnwu) for [magisk](https://github.com/topjohnwu/Magisk) and official [template](https://github.com/topjohnwu/magisk-module-installer).
[***Zackptg5***](https://github.com/Zackptg5) for [Unity](https://github.com/Zackptg5/Unity) template.

## Changelogs
### 1.3
- Upgraded to Unity Template v4.4 (more features/options over stock).
- Enabled Minimum API detection above API Level 26 (8.0.0 - Oreo). Below this API Level, no android versions are supported.
- Install Script cleanup
- Removed Fingerprint Shutter as requested by most users (Maybe i can make it optional in next update).

### 1.2
- Added 4k DCI support
- Increased max ISO from 6400 to 12800
- 60 fps video recording now working in 6.3
- Improved Denoising
- Framerates are now constant when shooting videos
- Changes to media_profiles.xml

### 1.1
- Reverted primary camera vendor blobs back to stock MIUI. This enables stock video recording on snapcam and also works with GCam 6.X (Currently Tested).
- Added device check for kenzo and kate.
- Changes to media_profiles.xml

### 1.0
- Initial Release
