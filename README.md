# TWRP tree for SHARP Z2
>mkdir omni

>cd omni

>git config --global user.name "you name" && git config --global user.email 

>repo init --depth=1 -u git://github.com/minimal-manifest-twrp/platform_manifest_twrp_omni.git -b twrp-7.1

>repo sync -j16

>cd

>cd omni

>git clone https://github.com/taras-fedora-syn/twrp_device_sharp_z2.git --single-branch device/sharp/sharp_z2

>. build/envsetup.sh

>lunch omni_sharp_z2-userdebug

>make recoveryimage

<details> 
  <summary>frameworks</summary>
cd omni
  
git clone https://github.com/omnirom/android_frameworks_native.git -b android-6.0

git clone https://github.com/omnirom/android_frameworks_av.git -b android-6.0

cp -a android_frameworks_native frameworks/native

cp -a android_frameworks_av frameworks/av

rm -rf android_frameworks_native

rm -rf android_frameworks_av
</details>

<details> 
  <summary>make: *** No rule to make target '/home/fedirpolishchuk/omni/out/target/product/sharp_z2/system/xbin/zip', needed by '/home/fedirpolishchuk/omni/out/target/product/sharp_z2/obj_arm/SHARED_LIBRARIES/libbmlutils_intermediates/teamwin'.  Stop.</summary>
  </details>

>cd omni

>cd out/target/product/sharp_z2/system

>mkdir xbin

>cd xbin

>nano zip

>Ctrl+O

 >Enter

 >Ctrl+X

>cd

>cd omni

>. build/envsetup.sh

>lunch omni_sharp_z2-userdebug

>make recoveryimage

make: *** No rule to make target '/home/fedirpolishchuk/omni/out/target/product/sharp_z2/obj/SHARED_LIBRARIES/libcryptfs_hw_intermediates/export_includes', needed by '/home/fedirpolishchuk/omni/out/target/product/sharp_z2/obj/SHARED_LIBRARIES/libcryptfsfde_intermediates/import_includes'.  Stop.

NONE
>/omni/frameworks$ zip native native

>rm -rf native

>export USE_NINJA=false

>export ALLOW_MISSING_DEPENDENCIES=true
