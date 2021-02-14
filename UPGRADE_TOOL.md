# Upgrade Tool

## Usage

```
sudo ../tools/linux/Linux_Upgrade_Tool/upgrade_tool ul rk3399_loader_v1.09.112.bin
sudo ../tools/linux/Linux_Upgrade_Tool/upgrade_tool di -p parameter.txt
sudo ../tools/linux/Linux_Upgrade_Tool/upgrade_tool di -u uboot.img
sudo ../tools/linux/Linux_Upgrade_Tool/upgrade_tool di -t trust.img
sudo ../tools/linux/Linux_Upgrade_Tool/upgrade_tool di -re resource.img
sudo ../tools/linux/Linux_Upgrade_Tool/upgrade_tool di -k kernel.img
sudo ../tools/linux/Linux_Upgrade_Tool/upgrade_tool di -b boot.img
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

* http://opensource.rock-chips.com/wiki_Upgradetool
* https://github.com/rockchip-linux/tools
