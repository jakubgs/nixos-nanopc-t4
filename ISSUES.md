# Description

List of issues I encountered installing software on NanoPC T4.

# Issues

## Seg Fault Uploading Root FS

```
 > ./tools/upgrade_tool di -rootfs tmp/rk3399-typec-friendlycore-bionic-4.4-arm64-20201217/rootfs.img
Program Data in /home/sochan/.config/upgrade_tool
directlba=1,first4access=1,gpt=1
Download rootfs start...(0x00040000)
17330 Segmentation fault      (core dumped) ${UTOOL} di -rootfs "${OS_DIR}/rootfs.img
```

## Booting Failures

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
