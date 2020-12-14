# TWRP tree for SHARP Z2

#### Installing Repo

>mkdir ~/bin

>PATH=~/bin:$PATH

>curl https://storage.googleapis.com/git-repo-downloads/repo > ~/bin/repo

>chmod a+x ~/bin/repo

>mkdir omni

>cd

>chmod -R 777 omni  

>cd omni

#### To initialize your local repository using the OMNIROM trees to build TWRP

>git config --global user.name "you name" && git config --global user.email "you email"

>repo init --depth=1 -u https://github.com/minimal-manifest-twrp/platform_manifest_twrp_omni.git -b twrp-6.0

>repo sync -j16

>git clone https://github.com/taras-fedora-syn/twrp_device_sharp_z2.git --single-branch device/sharp/sharp_z2

>. build/envsetup.sh

>lunch omni_sharp_z2-userdebug

>make recoveryimage

recovery.img -------- make completed successfully!

#################################################################################
<details>  
  <summary>download on MEGA</summary>

>cd

>sudo apt-get install ruby gem

>sudo gem install rmega

>cd ~/omni/out/target/product/sharp_z2

>rmega-up recovery.img -u you@email
</details>

##################################################################################
<details>  
  <summary>TWRP Android 7.1</summary>

>cd omni/bootable

>git clone https://github.com/omnirom/android_bootable_recovery.git -b android-7.1

>rm -rf recovery

>mv android_bootable_recovery recovery

>cd

>cd omni

>. build/envsetup.sh

>lunch omni_sharp_z2-userdebug

>make recoveryimage

recovery.img -------- make completed successfully!
</details>

##################################################################################
Upgrade python 2.7 to 3.6
<details>  
  <summary>Upgrade python 2.7 to 3.6 and 3.7 in Ubuntu</summary>
https://rajputankit22.medium.com/upgrade-python-2-7-to-3-6-and-3-7-in-ubuntu-97d2727bf911
</details>
