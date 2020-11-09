# TWRP tree for SHARP Z2

>repo init --depth=1 -u git://github.com/minimal-manifest-twrp/platform_manifest_twrp_omni.git -b twrp-9.0

>repo sync -j16

>git clone https://github.com/taras-fedora-syn/twrp_device_sharp_z2.git --single-branch device/sharp/sharp_z2

>export USE_NINJA=false

>. build/envsetup.sh

>lunch omni_sharp_z2

>make recoveryimage
