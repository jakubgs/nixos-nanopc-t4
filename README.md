# Upgrade Tool

## Usage

```
sudo ../tools/linux/Linux_Upgrade_Tool/upgrade_tool ul rk3399_loader_v1.09.112.bin
sudo ../tools/linux/Linux_Upgrade_Tool/upgrade_tool di -p parameter.txt
sudo ../tools/linux/Linux_Upgrade_Tool/upgrade_tool di -u uboot.img
sudo ../tools/linux/Linux_Upgrade_Tool/upgrade_tool di -t trust.img
sudo ../tools/linux/Linux_Upgrade_Tool/upgrade_tool di -re resource.img
sudo ../tools/linux/Linux_Upgrade_Tool/upgrade_tool di -k kernel.img
sudo ../tools/linux/Linux_Upgrade_Tool/upgrade_tool di -rootfs rootfs.img
sudo ../tools/linux/Linux_Upgrade_Tool/upgrade_tool rd
```

```
 # upgrade_tool UL MiniLoaderAll.bin
Program Data in /home/sochan/nanopc/tools
Loading loader...
Support Type:RK330C	Loader ver:1.09	Loader Time:2018-06-25 14:05:25
Upgrade loader ok.

 # tools/upgrade_tool PL 
Program Data in /home/sochan/nanopc/tools
Partition Info(parameter):
NO  LBA        Size       Name
01  0x00002000 0x00002000 uboot
02  0x00004000 0x00002000 trust
03  0x00006000 0x00002000 misc
04  0x00008000 0x00006000 resource
05  0x0000e000 0x00010000 kernel
06  0x0001e000 0x00010000 boot
07  0x00030000 0x00950000 rootfs
08  0x00980000 0xffffffff userdata
```


## Links

* https://nixos.wiki/wiki/NixOS_on_ARM/PINE64_ROCKPro64
* https://nixos.wiki/wiki/NixOS_on_ARM/Firefly_AIO-3399C
* http://opensource.rock-chips.com/wiki_Upgradetool
* https://github.com/rockchip-linux/tools
* https://github.com/makefu/ROC-RK3399-PC-overlay
* http://wiki.friendlyarm.com/wiki/index.php/NanoPC-T4
* https://www.armbian.com/nanopc-t4/

# U-Boot

## Usage

```
=> mmc info 
Device: sdhci@fe330000
Manufacturer ID: 15
OEM: 100
Name: AJTD4 
Timing Interface: High Speed
Tran Speed: 52000000
Rd Block Len: 512
MMC version 5.1
High Capacity: Yes
Capacity: 14.6 GiB
Bus Width: 8-bit
Erase Group Size: 512 KiB
HC WP Group Size: 8 MiB
User Capacity: 14.6 GiB WRREL
Boot Capacity: 4 MiB ENH
RPMB Capacity: 4 MiB ENH
=> mmc list
dwmmc@fe320000: 1
sdhci@fe330000: 0 (eMMC)
```

## Links

https://github.com/armbian/build
https://github.com/rockchip-linux/buildroot
https://buildroot.org/downloads/manual/manual.html#_getting_started
https://www.linuxjournal.com/content/handy-u-boot-trick
http://xillybus.com/tutorials/uboot-hacking-howto-1
https://github.com/u-boot/u-boot
https://www.sjoerdlangkemper.nl/2019/03/20/usb-to-serial-uart/

# Booting

```
Gave up waiting for userdata file system device.  Common problems:
 - Boot args (cat /proc/cmdline)
   - Check rootdelay= (did the system wait long enough?)
 - Missing modules (cat /proc/modules; ls /dev)
ALERT!  /dev/mmcblk1p8 does not exist.  Dropping to a shell!
```

```
[/sbin/fsck.ext4 (1) -- /dev/mmcblk1p8] fsck.ext4 -a -C0 /dev/mmcblk1p8 
userdata: recovering journal
userdata: clean, 76/505600 files, 40142/2570752 blocks
done.
[    2.645694] EXT4-fs (mmcblk1p8): mounted filesystem with ordered data mode. Opts: (null)
[    2.648964] EXT4-fs (mmcblk1p8): re-mounted. Opts: data=ordered
done.
Begin: Running /scripts/local-bottom ... done.
Begin: Running /scripts/init-bottom ... mount: mounting /dev on /overlay/dev failed: No such file or directory
mount: mounting /dev on /overlay/dev failed: No such file or directory
done.
mount: mounting /run on /overlay/run failed: No such file or directory
run-init: opening console: No such file or directory
Target filesystem doesn't have requested /sbin/init.
```

# Commands

```
=> ls mmc 0:7 /boot/nixos
<DIR>       4096 .
<DIR>       4096 ..
         8147940 7y0mif4h6mf27gi8fpdgy1sizij7z2zd-initrd-linux-5.4.43-initrd
        36018688 h70z2sg8gbpj8jy3s4k6d55wwz9b0fcz-linux-5.4.43-Image
<DIR>       4096 h70z2sg8gbpj8jy3s4k6d55wwz9b0fcz-linux-5.4.43-dtbs
=> ext4load mmc 0:7 ${kernel_addr_r} /boot/nixos/h70z2sg8gbpj8jy3s4k6d55wwz9b0fcz-linux-5.4.43-Image
36018688 bytes read in 908 ms (37.8 MiB/s)
```

```
setenv condev "console=ttyS0,1500000n8 console=tty0"
setenv bootargs "root=/dev/mmcblk0p1 rootwait rw ${condev} no_console_suspend fsck.repair=yes"
setenv loadaddr "0x11000000"
setenv dtb_loadaddr "0x1000000"
setenv initrd_loadaddr "0x13000000"
setenv bootdev "0:7"
setenv bootdir "/boot/nixos"
ext4load mmc ${bootdev} ${loadaddr} ${bootdir}/h70z2sg8gbpj8jy3s4k6d55wwz9b0fcz-linux-5.4.43-Image
ext4load mmc ${bootdev} ${initrd_loadaddr} ${bootdir}/7y0mif4h6mf27gi8fpdgy1sizij7z2zd-initrd-linux-5.4.43-initrd
ext4load mmc ${bootdev} ${dtb_loadaddr} ${bootdir}/h70z2sg8gbpj8jy3s4k6d55wwz9b0fcz-linux-5.4.43-dtbs/rockchip/rk3399-nanopc-t4.dtb
booti ${loadaddr} - ${dtb_loadaddr}
booti ${loadaddr} ${initrd_loadaddr} ${dtb_loadaddr}
```

```
 > cat /mnt/plugged/boot/extlinux/extlinux.conf   
# Generated file, all changes will be lost on nixos-rebuild!

# Change this to e.g. nixos-42 to temporarily boot to an older configuration.
DEFAULT nixos-default

MENU TITLE ------------------------------------------------------------
TIMEOUT 30

LABEL nixos-default
  MENU LABEL NixOS - Default
  LINUX ../nixos/h70z2sg8gbpj8jy3s4k6d55wwz9b0fcz-linux-5.4.43-Image
  INITRD ../nixos/7y0mif4h6mf27gi8fpdgy1sizij7z2zd-initrd-linux-5.4.43-initrd
  FDTDIR ../nixos/h70z2sg8gbpj8jy3s4k6d55wwz9b0fcz-linux-5.4.43-dtbs
  APPEND systemConfig=/nix/store/c04k3lra7xmrvak7j47p7aclgp7kxxsw-nixos-system-nixos-20.03.2027.aca160ea229 init=/nix/store/c04k3lra7xmrvak7j47p7aclgp7kxxsw-nixos-system-nixos-20.03.2027.aca160ea229/init cma=32M console=ttyS0,115200n8 console=ttyAMA0,115200n8 console=tty0 loglevel=7
```

## Links

* https://wiki.amarulasolutions.com/bsp/rockchip/rk3399/npc_t4.html