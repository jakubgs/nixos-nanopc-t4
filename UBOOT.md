# U-Boot

Can be accessed when booting by using the serial console and interrupting the boot process.

## Usage

### System Info
```
=> bdinfo

```

### MMC Info

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
```
```
=> mmc list
dwmmc@fe320000: 1
sdhci@fe330000: 0 (eMMC)
```

## Links

* https://github.com/armbian/build
* https://github.com/rockchip-linux/buildroot
* https://buildroot.org/downloads/manual/manual.html#_getting_started
* https://www.linuxjournal.com/content/handy-u-boot-trick
* http://xillybus.com/tutorials/uboot-hacking-howto-1
* https://github.com/u-boot/u-boot

# Booting

## Commands

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

## `extlinux.conf`

```
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

## Failure

I tried booting the kernel from the `nixos-sd-image-20.03.2447.afa9ca61924-aarch64-linux.img` SD card image but that failed:
```
=> setenv loadaddr "0x11000000"
=> setenv bootdev "0:7"
=> setenv bootdir "/boot/nixos"
=> setenv kernel "h70z2sg8gbpj8jy3s4k6d55wwz9b0fcz-linux-5.4.43-Image"
=>
=> ext4load mmc ${bootdev} ${loadaddr} ${bootdir}/${kernel}
36018688 bytes read in 909 ms (37.8 MiB/s)
=> 
=> booti ${loadaddr}

Starting kernel ...
```

## Links

* https://wiki.amarulasolutions.com/bsp/rockchip/rk3399/npc_t4.html
* https://github.com/hypriot/image-builder-odroid-c2/issues/5
* https://github.com/rockchip-linux/rkdeveloptool
