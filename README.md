OnRISC Buildroot based BSP for viaVPN service
=============================================

Installation
------------

This BSP requires Buildroot version 2016.11 or newer. If you're working with
our Buildroot BSP for the first time please perform following actions:

1. git clone https://github.com/visionsystemsgmbh/onrisc_br_bsp.git
1. git clone https://github.com/visionsystemsgmbh/onrisc_br_viavpn.git
2. git clone http://git.buildroot.net/git/buildroot.git
3. cd buildroot
4. make BR2_EXTERNAL=../onrisc_br_bsp/:../onrisc_br_viavpn list-defconfigs
