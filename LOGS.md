# Armbian OLD

```
nanopct4:~:% sudo journalctl | grep -i pci
Jan 31 19:37:50 nanopct4 kernel: PCI/MSI: /interrupt-controller@fee00000/interrupt-controller@fee20000 domain created
Jan 31 19:37:50 nanopct4 kernel: PCI: CLS 0 bytes, default 64
Jan 31 19:37:50 nanopct4 kernel: rockchip-pcie f8000000.pcie: host bridge /pcie@f8000000 ranges:
Jan 31 19:37:50 nanopct4 kernel: OF: /pcie@f8000000: Missing device_type
Jan 31 19:37:50 nanopct4 kernel: rockchip-pcie f8000000.pcie:      MEM 0x00fa000000..0x00fbdfffff -> 0x00fa000000
Jan 31 19:37:50 nanopct4 kernel: rockchip-pcie f8000000.pcie:       IO 0x00fbe00000..0x00fbefffff -> 0x00fbe00000
Jan 31 19:37:50 nanopct4 kernel: rockchip-pcie f8000000.pcie: no vpcie12v regulator found
Jan 31 19:37:50 nanopct4 kernel: ehci-pci: EHCI PCI platform driver
Jan 31 19:37:50 nanopct4 kernel: ohci-pci: OHCI PCI platform driver
Jan 31 19:37:50 nanopct4 kernel: rockchip-pcie f8000000.pcie: host bridge /pcie@f8000000 ranges:
Jan 31 19:37:50 nanopct4 kernel: rockchip-pcie f8000000.pcie:      MEM 0x00fa000000..0x00fbdfffff -> 0x00fa000000
Jan 31 19:37:50 nanopct4 kernel: rockchip-pcie f8000000.pcie:       IO 0x00fbe00000..0x00fbefffff -> 0x00fbe00000
Jan 31 19:37:50 nanopct4 kernel: rockchip-pcie f8000000.pcie: no vpcie12v regulator found
Jan 31 19:37:50 nanopct4 kernel: rockchip-pcie f8000000.pcie: PCIe link training gen1 timeout!
Jan 31 19:37:50 nanopct4 kernel: rockchip-pcie: probe of f8000000.pcie failed with error -110
```

# Armbian NEW

```
sochan@nanopct4:~$ sudo journalctl | grep -i pci
Feb 04 12:10:10 nanopct4 kernel: PCI/MSI: /interrupt-controller@fee00000/interrupt-controller@fee20000 domain created
Feb 04 12:10:10 nanopct4 kernel: PCI: CLS 0 bytes, default 64
Feb 04 12:10:10 nanopct4 kernel: rockchip-pcie f8000000.pcie: host bridge /pcie@f8000000 ranges:
Feb 04 12:10:10 nanopct4 kernel: OF: /pcie@f8000000: Missing device_type
Feb 04 12:10:10 nanopct4 kernel: rockchip-pcie f8000000.pcie:      MEM 0x00fa000000..0x00fbdfffff -> 0x00fa000000
Feb 04 12:10:10 nanopct4 kernel: rockchip-pcie f8000000.pcie:       IO 0x00fbe00000..0x00fbefffff -> 0x00fbe00000
Feb 04 12:10:10 nanopct4 kernel: rockchip-pcie f8000000.pcie: no vpcie12v regulator found
Feb 04 12:10:10 nanopct4 kernel: ehci-pci: EHCI PCI platform driver
Feb 04 12:10:10 nanopct4 kernel: ohci-pci: OHCI PCI platform driver
Feb 04 12:10:10 nanopct4 kernel: rockchip-pcie f8000000.pcie: host bridge /pcie@f8000000 ranges:
Feb 04 12:10:10 nanopct4 kernel: rockchip-pcie f8000000.pcie:      MEM 0x00fa000000..0x00fbdfffff -> 0x00fa000000
Feb 04 12:10:10 nanopct4 kernel: rockchip-pcie f8000000.pcie:       IO 0x00fbe00000..0x00fbefffff -> 0x00fbe00000
Feb 04 12:10:10 nanopct4 kernel: rockchip-pcie f8000000.pcie: no vpcie12v regulator found
Feb 04 12:10:10 nanopct4 kernel: rockchip-pcie f8000000.pcie: PCI host bridge to bus 0000:00
Feb 04 12:10:10 nanopct4 kernel: pci_bus 0000:00: root bus resource [bus 00-1f]
Feb 04 12:10:10 nanopct4 kernel: pci_bus 0000:00: root bus resource [mem 0xfa000000-0xfbdfffff]
Feb 04 12:10:10 nanopct4 kernel: pci_bus 0000:00: root bus resource [io  0x0000-0xfffff] (bus address [0xfbe00000-0xfbefffff])
Feb 04 12:10:10 nanopct4 kernel: pci 0000:00:00.0: [1d87:0100] type 01 class 0x060400
Feb 04 12:10:10 nanopct4 kernel: pci 0000:00:00.0: supports D1
Feb 04 12:10:10 nanopct4 kernel: pci 0000:00:00.0: PME# supported from D0 D1 D3hot
Feb 04 12:10:10 nanopct4 kernel: pci 0000:00:00.0: bridge configuration invalid ([bus 00-00]), reconfiguring
Feb 04 12:10:10 nanopct4 kernel: pci 0000:01:00.0: [144d:a808] type 00 class 0x010802
Feb 04 12:10:10 nanopct4 kernel: pci 0000:01:00.0: reg 0x10: [mem 0x00000000-0x00003fff 64bit]
Feb 04 12:10:10 nanopct4 kernel: pci 0000:01:00.0: Max Payload Size set to 256 (was 128, max 256)
Feb 04 12:10:10 nanopct4 kernel: pci 0000:01:00.0: 16.000 Gb/s available PCIe bandwidth, limited by 5.0 GT/s PCIe x4 link at 0000:00:00.0 (capable of 31.504 Gb/s with 8.0 GT/s PCIe x4 link)
Feb 04 12:10:10 nanopct4 kernel: pci_bus 0000:01: busn_res: [bus 01-1f] end is updated to 01
Feb 04 12:10:10 nanopct4 kernel: pci 0000:00:00.0: BAR 14: assigned [mem 0xfa000000-0xfa0fffff]
Feb 04 12:10:10 nanopct4 kernel: pci 0000:01:00.0: BAR 0: assigned [mem 0xfa000000-0xfa003fff 64bit]
Feb 04 12:10:10 nanopct4 kernel: pci 0000:00:00.0: PCI bridge to [bus 01]
Feb 04 12:10:10 nanopct4 kernel: pci 0000:00:00.0:   bridge window [mem 0xfa000000-0xfa0fffff]
Feb 04 12:10:10 nanopct4 kernel: pcieport 0000:00:00.0: enabling device (0000 -> 0002)
Feb 04 12:10:10 nanopct4 kernel: pcieport 0000:00:00.0: PME: Signaling with IRQ 92
Feb 04 12:10:10 nanopct4 kernel: pcieport 0000:00:00.0: AER: enabled with IRQ 92
Feb 04 12:10:10 nanopct4 kernel: nvme nvme0: pci function 0000:01:00.0
```
```
sochan@nanopct4:~$ sudo lspci -v
00:00.0 PCI bridge: Fuzhou Rockchip Electronics Co., Ltd RK3399 PCI Express Root Port (prog-if 00 [Normal decode])
	Flags: bus master, fast devsel, latency 0, IRQ 92
	Bus: primary=00, secondary=01, subordinate=01, sec-latency=0
	I/O behind bridge: 00000000-00000fff [size=4K]
	Memory behind bridge: fa000000-fa0fffff [size=1M]
	Prefetchable memory behind bridge: 00000000-000fffff [size=1M]
	Capabilities: [80] Power Management version 3
	Capabilities: [90] MSI: Enable+ Count=1/1 Maskable+ 64bit+
	Capabilities: [b0] MSI-X: Enable- Count=1 Masked-
	Capabilities: [c0] Express Root Port (Slot+), MSI 00
	Capabilities: [100] Advanced Error Reporting
	Capabilities: [274] Transaction Processing Hints
	Kernel driver in use: pcieport

01:00.0 Non-Volatile memory controller: Samsung Electronics Co Ltd NVMe SSD Controller SM981/PM981/PM983 (prog-if 02 [NVM Express])
	Subsystem: Samsung Electronics Co Ltd NVMe SSD Controller SM981/PM981/PM983
	Flags: bus master, fast devsel, latency 0, IRQ 91, NUMA node 0
	Memory at fa000000 (64-bit, non-prefetchable) [size=16K]
	Capabilities: [40] Power Management version 3
	Capabilities: [50] MSI: Enable- Count=1/1 Maskable- 64bit+
	Capabilities: [70] Express Endpoint, MSI 00
	Capabilities: [b0] MSI-X: Enable+ Count=33 Masked-
	Capabilities: [100] Advanced Error Reporting
	Capabilities: [148] Device Serial Number 00-00-00-00-00-00-00-00
	Capabilities: [158] Power Budgeting <?>
	Capabilities: [168] Secondary PCI Express
	Capabilities: [188] Latency Tolerance Reporting
	Capabilities: [190] L1 PM Substates
	Kernel driver in use: nvme
```
```
sochan@nanopct4:~$ sudo fdisk -l /dev/nvme0n1
Disk /dev/nvme0n1: 232.91 GiB, 250059350016 bytes, 488397168 sectors
Disk model: Samsung SSD 970 EVO Plus 250GB          
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes
Disklabel type: dos
Disk identifier: 0x033ede3f

Device         Boot     Start       End   Sectors  Size Id Type
/dev/nvme0n1p1             32 471859232 471859201  225G 83 Linux
/dev/nvme0n1p2      471859233 488397167  16537935  7.9G 83 Linux
```
```
sochan@nanopct4:~$ uname -a
Linux nanopct4 5.10.12-rockchip64 #21.02.1 SMP PREEMPT Wed Feb 3 20:55:02 CET 2021 aarch64 aarch64 aarch64 GNU/Linux
```
```
sochan@nanopct4:~$ ls -l /boot/
total 63872
-rw-r--r-- 1 root root      166 Feb  9 18:59 armbianEnv.txt
-rw-r--r-- 1 root root     1536 Feb  4 12:12 armbian_first_run.txt.template
-rw-r--r-- 1 root root    38518 Feb  4 12:12 boot.bmp
-rw-r--r-- 1 root root     3113 Feb  4 12:10 boot.cmd
-rw-rw-r-- 1 root root     3185 Feb  4 12:12 boot.scr
-rw-r--r-- 1 root root   221399 Feb  3 19:55 config-5.10.12-rockchip64
lrwxrwxrwx 1 root root       22 Feb  4 12:11 dtb -> dtb-5.10.12-rockchip64
drwxr-xr-x 6 root root     4096 Feb  4 12:11 dtb-5.10.12-rockchip64
lrwxrwxrwx 1 root root       26 Feb  4 12:10 Image -> vmlinuz-5.10.12-rockchip64
-rw-r--r-- 1 root root 15339843 Feb  4 12:14 initrd.img-5.10.12-rockchip64
-rw-r--r-- 1 root root  5835612 Feb  3 19:55 System.map-5.10.12-rockchip64
lrwxrwxrwx 1 root root       26 Feb  4 12:14 uInitrd -> uInitrd-5.10.12-rockchip64
-rw-r--r-- 1 root root 15339907 Feb  4 12:14 uInitrd-5.10.12-rockchip64
-rw-r--r-- 1 root root 28582400 Feb  3 19:55 vmlinuz-5.10.12-rockchip64
```
```
sochan@nanopct4:/boot$ sudo apt list | grep current-rockchip64
linux-dtb-current-rockchip64/now 21.02.1 arm64 [installed,local]
linux-headers-current-rockchip64/focal 20.11.4 arm64
linux-image-current-rockchip64/now 21.02.1 arm64 [installed,local]
```

## Links

https://github.com/armbian/build/blob/master/config/sources/families/rockchip64.conf

# NixOS

```
Jan 31 21:54:42 sachiel kernel: rockchip-pcie f8000000.pcie: host bridge /pcie@f8000000 ranges:
Jan 31 21:54:42 sachiel kernel: rockchip-pcie f8000000.pcie:      MEM 0x00fa000000..0x00fbdfffff -> 0x00fa000000
Jan 31 21:54:42 sachiel kernel: rockchip-pcie f8000000.pcie:       IO 0x00fbe00000..0x00fbefffff -> 0x00fbe00000
Jan 31 21:54:42 sachiel kernel: rockchip-pcie f8000000.pcie: host bridge /pcie@f8000000 ranges:
Jan 31 21:54:42 sachiel kernel: rockchip-pcie f8000000.pcie:      MEM 0x00fa000000..0x00fbdfffff -> 0x00fa000000
Jan 31 21:54:42 sachiel kernel: rockchip-pcie f8000000.pcie:       IO 0x00fbe00000..0x00fbefffff -> 0x00fbe00000
Jan 31 21:54:42 sachiel kernel: rockchip-pcie f8000000.pcie: host bridge /pcie@f8000000 ranges:
Jan 31 21:54:42 sachiel kernel: rockchip-pcie f8000000.pcie:      MEM 0x00fa000000..0x00fbdfffff -> 0x00fa000000
Jan 31 21:54:42 sachiel kernel: rockchip-pcie f8000000.pcie:       IO 0x00fbe00000..0x00fbefffff -> 0x00fbe00000
Jan 31 21:54:42 sachiel kernel: rockchip-pcie f8000000.pcie: host bridge /pcie@f8000000 ranges:
Jan 31 21:54:42 sachiel kernel: rockchip-pcie f8000000.pcie:      MEM 0x00fa000000..0x00fbdfffff -> 0x00fa000000
Jan 31 21:54:42 sachiel kernel: rockchip-pcie f8000000.pcie:       IO 0x00fbe00000..0x00fbefffff -> 0x00fbe00000
Jan 31 21:54:42 sachiel kernel: rockchip-pcie f8000000.pcie: host bridge /pcie@f8000000 ranges:
Jan 31 21:54:42 sachiel kernel: rockchip-pcie f8000000.pcie:      MEM 0x00fa000000..0x00fbdfffff -> 0x00fa000000
Jan 31 21:54:42 sachiel kernel: rockchip-pcie f8000000.pcie:       IO 0x00fbe00000..0x00fbefffff -> 0x00fbe00000
Jan 31 21:54:42 sachiel kernel: rockchip-pcie f8000000.pcie: host bridge /pcie@f8000000 ranges:
Jan 31 21:54:42 sachiel kernel: rockchip-pcie f8000000.pcie:      MEM 0x00fa000000..0x00fbdfffff -> 0x00fa000000
Jan 31 21:54:42 sachiel kernel: rockchip-pcie f8000000.pcie:       IO 0x00fbe00000..0x00fbefffff -> 0x00fbe00000
Jan 31 21:54:42 sachiel kernel: rockchip-pcie f8000000.pcie: no vpcie12v regulator found
Jan 31 21:54:43 sachiel kernel: rockchip-pcie f8000000.pcie: PCIe link training gen1 timeout!
Jan 31 21:54:43 sachiel kernel: rockchip-pcie: probe of f8000000.pcie failed with error -110
```
```
 > sudo dmesg | grep pci
[    0.010197] PCI/MSI: /interrupt-controller@fee00000/interrupt-controller@fee20000 domain created
[    0.882549] PCI: CLS 0 bytes, default 64
[    1.616609] ehci-pci: EHCI PCI platform driver
[    1.651720] ohci-pci: OHCI PCI platform driver
[    5.010603] rockchip-pcie f8000000.pcie: no vpcie12v regulator found
[    5.010620] rockchip-pcie f8000000.pcie: no vpcie3v3 regulator found
[    5.010631] rockchip-pcie f8000000.pcie: no vpcie1v8 regulator found
[    5.010641] rockchip-pcie f8000000.pcie: no vpcie0v9 regulator found
[    5.538198] rockchip-pcie f8000000.pcie: PCIe link training gen1 timeout!
[    5.538942] rockchip-pcie: probe of f8000000.pcie failed with error -110
```

# Friendly Core

```
pi@NanoPC-T4:~$ sudo journalctl | grep -i pci
Jan 31 20:44:42 FriendlyELEC kernel: PCI/MSI: /interrupt-controller@fee00000/interrupt-controller@fee20000 domain created
Jan 31 20:44:42 FriendlyELEC kernel: PCI: CLS 0 bytes, default 64
Jan 31 20:44:42 FriendlyELEC kernel: rockchip-pcie f8000000.pcie: GPIO lookup for consumer ep
Jan 31 20:44:42 FriendlyELEC kernel: rockchip-pcie f8000000.pcie: using device tree for GPIO lookup
Jan 31 20:44:42 FriendlyELEC kernel: of_get_named_gpiod_flags: parsed 'ep-gpios' property of node '/pcie@f8000000[0]' - status (0)
Jan 31 20:44:42 FriendlyELEC kernel: rockchip-pcie f8000000.pcie: missing "memory-region" property
Jan 31 20:44:42 FriendlyELEC kernel: rockchip-pcie f8000000.pcie: no vpcie12v regulator found
Jan 31 20:44:42 FriendlyELEC kernel: rockchip-pcie f8000000.pcie: no vpcie3v3 regulator found
Jan 31 20:44:42 FriendlyELEC kernel: rockchip-pcie f8000000.pcie: no vpcie1v8 regulator found
Jan 31 20:44:42 FriendlyELEC kernel: rockchip-pcie f8000000.pcie: no vpcie0v9 regulator found
Jan 31 20:44:42 FriendlyELEC kernel: rockchip-pcie f8000000.pcie: host bridge /pcie@f8000000 ranges:
Jan 31 20:44:42 FriendlyELEC kernel: rockchip-pcie f8000000.pcie:   MEM 0xfa000000..0xfbdfffff -> 0xfa000000
Jan 31 20:44:42 FriendlyELEC kernel: rockchip-pcie f8000000.pcie:    IO 0xfbe00000..0xfbefffff -> 0xfbe00000
Jan 31 20:44:42 FriendlyELEC kernel: rockchip-pcie f8000000.pcie: PCI host bridge to bus 0000:00
Jan 31 20:44:42 FriendlyELEC kernel: pci_bus 0000:00: root bus resource [bus 00-1f]
Jan 31 20:44:42 FriendlyELEC kernel: pci_bus 0000:00: root bus resource [mem 0xfa000000-0xfbdfffff]
Jan 31 20:44:42 FriendlyELEC kernel: pci_bus 0000:00: root bus resource [io  0x0000-0xfffff] (bus address [0xfbe00000-0xfbefffff])
Jan 31 20:44:42 FriendlyELEC kernel: pci 0000:00:00.0: [1d87:0100] type 01 class 0x060400
Jan 31 20:44:42 FriendlyELEC kernel: pci 0000:00:00.0: supports D1
Jan 31 20:44:42 FriendlyELEC kernel: pci 0000:00:00.0: PME# supported from D0 D1 D3hot
Jan 31 20:44:42 FriendlyELEC kernel: pci 0000:00:00.0: bridge configuration invalid ([bus 00-00]), reconfiguring
Jan 31 20:44:42 FriendlyELEC kernel: pci 0000:01:00.0: [144d:a808] type 00 class 0x010802
Jan 31 20:44:42 FriendlyELEC kernel: pci 0000:01:00.0: reg 0x10: [mem 0x00000000-0x00003fff 64bit]
Jan 31 20:44:42 FriendlyELEC kernel: pci 0000:01:00.0: 16.000 Gb/s available PCIe bandwidth, limited by 5 GT/s x4 link at 0000:00:00.0 (capable of 31.504 Gb/s with 8 GT/s x4 link)
Jan 31 20:44:42 FriendlyELEC kernel: pci_bus 0000:01: busn_res: [bus 01-1f] end is updated to 01
Jan 31 20:44:42 FriendlyELEC kernel: pci 0000:00:00.0: BAR 8: assigned [mem 0xfa000000-0xfa0fffff]
Jan 31 20:44:42 FriendlyELEC kernel: pci 0000:01:00.0: BAR 0: assigned [mem 0xfa000000-0xfa003fff 64bit]
Jan 31 20:44:42 FriendlyELEC kernel: pci 0000:00:00.0: PCI bridge to [bus 01]
Jan 31 20:44:42 FriendlyELEC kernel: pci 0000:00:00.0:   bridge window [mem 0xfa000000-0xfa0fffff]
Jan 31 20:44:42 FriendlyELEC kernel: pcieport 0000:00:00.0: enabling device (0000 -> 0002)
Jan 31 20:44:42 FriendlyELEC kernel: pcieport 0000:00:00.0: Signaling PME with IRQ 76
Jan 31 20:44:42 FriendlyELEC kernel: pcieport 0000:00:00.0: AER enabled with IRQ 76
Jan 31 20:44:42 FriendlyELEC kernel: nvme nvme0: pci function 0000:01:00.0
Jan 31 20:44:42 FriendlyELEC kernel: ehci-pci: EHCI PCI platform driver
```
```
pi@NanoPC-T4:~$ sudo journalctl | grep -i nvme
Jan 31 20:44:42 FriendlyELEC kernel: nvme nvme0: pci function 0000:01:00.0
Jan 31 20:44:42 FriendlyELEC kernel: nvme 0000:01:00.0: enabling device (0000 -> 0002)
Jan 31 20:44:42 FriendlyELEC kernel: nvme nvme0: missing or invalid SUBNQN field.
Jan 31 20:44:42 FriendlyELEC kernel: nvme nvme0: Shutdown timeout set to 8 seconds
Jan 31 20:44:42 FriendlyELEC kernel:  nvme0n1: p1 p2
```
```
pi@NanoPC-T4:~$ sudo lspci -v
00:00.0 PCI bridge: Fuzhou Rockchip Electronics Co., Ltd RK3399 PCI Express Root Port (prog-if 00 [Normal decode])
	Flags: bus master, fast devsel, latency 0, IRQ 76
	Bus: primary=00, secondary=01, subordinate=01, sec-latency=0
	I/O behind bridge: 00000000-00000fff [size=4K]
	Memory behind bridge: fa000000-fa0fffff [size=1M]
	Prefetchable memory behind bridge: 00000000-000fffff [size=1M]
	Capabilities: [80] Power Management version 3
	Capabilities: [90] MSI: Enable+ Count=1/1 Maskable+ 64bit+
	Capabilities: [b0] MSI-X: Enable- Count=1 Masked-
	Capabilities: [c0] Express Root Port (Slot+), MSI 00
	Capabilities: [100] Advanced Error Reporting
	Capabilities: [274] Transaction Processing Hints
	Kernel driver in use: pcieport
lspci: Unable to load libkmod resources: error -12

01:00.0 Non-Volatile memory controller: Samsung Electronics Co Ltd NVMe SSD Controller SM981/PM981/PM983 (prog-if 02 [NVM Express])
	Subsystem: Samsung Electronics Co Ltd NVMe SSD Controller SM981/PM981/PM983
	Flags: bus master, fast devsel, latency 0, IRQ 75
	Memory at fa000000 (64-bit, non-prefetchable) [size=16K]
	Capabilities: [40] Power Management version 3
	Capabilities: [50] MSI: Enable- Count=1/1 Maskable- 64bit+
	Capabilities: [70] Express Endpoint, MSI 00
	Capabilities: [b0] MSI-X: Enable+ Count=33 Masked-
	Capabilities: [100] Advanced Error Reporting
	Capabilities: [148] Device Serial Number 00-00-00-00-00-00-00-00
	Capabilities: [158] Power Budgeting <?>
	Capabilities: [168] Secondary PCI Express
	Capabilities: [188] Latency Tolerance Reporting
	Capabilities: [190] L1 PM Substates
	Kernel driver in use: nvme
```
```
pi@NanoPC-T4:~$ sudo uname -a
Linux NanoPC-T4 4.19.111 #4 SMP PREEMPT Tue Oct 20 13:17:49 CST 2020 aarch64 aarch64 aarch64 GNU/Linux
```
```
pi@NanoPC-T4:/lib/modules/4.19.111/kernel/arch/arm64$ sudo lsmod
Module                  Size  Used by
algif_hash             16384  1
algif_skcipher         16384  1
af_alg                 24576  6 algif_hash,algif_skcipher
bnep                   24576  2
hci_uart               61440  1
btbcm                  16384  1 hci_uart
serdev                 20480  1 hci_uart
bcmdhd               1155072  0
crct10dif_ce           16384  0
rk_wifi_config         16384  1 bcmdhd
cfg80211              606208  1 bcmdhd
uio_pdrv_genirq        16384  0
uio                    20480  1 uio_pdrv_genirq
sch_fq_codel           20480  2
ip_tables              28672  0
```

# Links

https://github.com/rockchip-linux/kernel/issues/116
https://github.com/MichaIng/DietPi/issues/1829
https://github.com/ayufan-rock64/linux-kernel/commit/3cde5c624c9c39aa03251a55c2d26a48b5bdca5

https://github.com/friendlyarm/kernel-rockchip/commit/7117f55d19dc3b902b8ce7e28b944d30105069a5
https://github.com/friendlyarm/kernel-rockchip/commit/2e5b78e90fe450aca212af67d7ea831a364da9a4
https://github.com/friendlyarm/kernel-rockchip/tree/nanopi4-linux-v4.4.y_r201904
https://github.com/friendlyarm/kernel-rockchip/blob/nanopi4-v4.19.y/Makefile
https://github.com/rockchip-linux/kernel/blob/develop-4.19/Makefile
https://github.com/NixOS/nixpkgs/issues/64916
https://discourse.nixos.org/t/how-to-provide-missing-headers-to-a-kernel-build/11422/2
https://discourse.nixos.org/t/caching-local-compilation-results-for-all-compiled-packages/3516/2
https://github.com/rockchip-linux/kernel/issues/116
https://patchwork.kernel.org/project/linux-rockchip/patch/1502353273-123788-1-git-send-email-shawn.lin@rock-chips.com/
https://github.com/ayufan-rock64/linux-kernel
