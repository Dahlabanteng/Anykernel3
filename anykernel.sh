# AnyKernel3 Ramdisk Mod Script
# osm0sis @ xda-developers

## AnyKernel setup
# begin properties
properties() { '
kernel.string= 
maintainer.string=Cakeby Kernel by Kakashi
do.devicecheck=1
do.modules=0
do.systemless=1
do.cleanup=1
do.cleanuponabort=0
device.name1=tissot
supported.versions=9 - 12
supported.patchlevels=
'; } # end properties


# shell variables
block=/dev/block/platform/soc/7824900.sdhci/by-name/boot;
is_slot_device=1;
ramdisk_compression=auto;


## AnyKernel methods (DO NOT CHANGE)
# import patching functions/variables - see for reference
. tools/ak3-core.sh;


## AnyKernel file attributes
# set permissions/ownership for included ramdisk files
set_perm_recursive 0 0 755 644 $ramdisk/*;
set_perm_recursive 0 0 750 750 $ramdisk/init* $ramdisk/sbin;


## AnyKernel boot install
dump_boot;
# begin ramdisk changes

write_boot;
## end boot install

ui_print "Cakeby Kernel OC Installed Succesfully";