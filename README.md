# TWRP tree for SHARP Z2
>mkdir omni

>cd omni

>git config --global user.name "you name" && git config --global user.email 

>repo init --depth=1 -u git://github.com/minimal-manifest-twrp/platform_manifest_twrp_omni.git -b twrp-9.0

>repo sync -j16

>~/omni/frameworks$ zip native native

>rm -rf native

>cd

>cd omni

>git clone https://github.com/taras-fedora-syn/twrp_device_sharp_z2.git --single-branch device/sharp/sharp_z2

>export USE_NINJA=false

>export ALLOW_MISSING_DEPENDENCIES=true

>. build/envsetup.sh

>lunch omni_sharp_z2-userdebug

>make recoveryimage



make: *** No rule to make target '/home/fedirpolishchuk/omni/out/target/product/sharp_z2/system/xbin/zip', needed by '/home/fedirpolishchuk/omni/out/target/product/sharp_z2/obj_arm/SHARED_LIBRARIES/libbmlutils_intermediates/teamwin'.  Stop.

#### make failed to build some targets (06:19 (mm:ss)) ####

@sharp:~/omni/out/target/product/sharp_z2/system$ mkdir xbin
@sharp:~/omni/out/target/product/sharp_z2/system$ cd xbin
@sharp:~/omni/out/target/product/sharp_z2/system/xbin$ nano zip
@sharp:~/omni/out/target/product/sharp_z2/system/xbin$ ls -a
.  ..  zip
@sharp:~/omni/out/target/product/sharp_z2/system/xbin$ cd
@sharp:~$ cd omni
@sharp:~/omni$ . build/envsetup.sh
including device/sharp/sharp_z2/vendorsetup.sh
@sharp:~/omni$ lunch omni_sharp_z2-userdebug
