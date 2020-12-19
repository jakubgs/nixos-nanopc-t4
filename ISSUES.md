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
