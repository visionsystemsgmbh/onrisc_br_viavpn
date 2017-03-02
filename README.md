OnRISC Buildroot based BSP for viaVPN service
=============================================

Installation
------------

This BSP requires Buildroot version 2016.11 or newer and a Linaro toolchain. If
you're working with our Buildroot BSP for the first time please perform
following actions:

Toolchain installation:

1. wget https://releases.linaro.org/components/toolchain/binaries/latest/arm-linux-gnueabihf/gcc-linaro-6.2.1-2016.11-x86_64_arm-linux-gnueabihf.tar.xz
2. tar xJf gcc-linaro-6.2.1-2016.11-x86_64_arm-linux-gnueabihf.tar.xz -C /opt

Buildroot configuration:

1. git clone https://github.com/visionsystemsgmbh/onrisc_br_bsp.git
1. git clone https://github.com/visionsystemsgmbh/onrisc_br_viavpn.git
2. git clone http://git.buildroot.net/git/buildroot.git
3. cd buildroot
4. make BR2_EXTERNAL=../onrisc_br_bsp/:../onrisc_br_viavpn list-defconfigs
5. make baltos_viavpn_defconfig

With these steps done you have selected normal BSP with bootloader, kernel etc.
as also `vsopenvpnd` package with its dependencies and toolchain settings.

Invoke `make` to get rootfs images under `output/images`.

>  If you already use a working Buildroot environment you just need to invoke the 4.
step to add onrisc_br_viavpn to your BR2_EXTERNAL environment, select `vsopenvpnd`
package, configure the external Linaro toolchain and rebuild the whole Buildroot
because of the changed toolchain.

Image Installation
------------------

For SD card installation you just need to burn `output/image/sdcard.img` to your
SD card. See Section "9.5.1. SD/microSD-card" of the [OnRISC User Manual](ftp://ftp.visionsystems.de/pub/multiio/OnRISC/Baltos/OnRISC_User_Manual.pdf)
for further instructions.

For NAND installation you'll need `output/image/rootfs.tar.bz2` file. You can find
a detailed description in Section "9.5.2. NAND" of the [OnRISC User Manual](ftp://ftp.visionsystems.de/pub/multiio/OnRISC/Baltos/OnRISC_User_Manual.pdf).
