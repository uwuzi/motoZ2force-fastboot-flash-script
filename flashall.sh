#!/bin/bash

fastboot getvar max-sparse-size
fastboot oem fb_mode_set
fastboot flash partition gpt.bin
fastboot flash bootloader bootloader.img
fastboot flash modem_a NON-HLOS.bin
fastboot flash modem_b NON-HLOS.bin
fastboot flash fsg_a fsg.mbn
fastboot flash fsg_b fsg.mbn
fastboot erase modemst1
fastboot erase modemst2
fastboot flash bluetooth_a BTFM.bin
fastboot flash bluetooth_b BTFM.bin
fastboot flash dsp_a adspso.bin
fastboot flash dsp_b adspso.bin
fastboot flash logo_a logo.bin
fastboot flash logo_b logo.bin
fastboot flash boot_a boot.img
fastboot flash boot_b boot.img
fastboot flash system_a system.img_sparsechunk.0
fastboot flash system_a system.img_sparsechunk.1
fastboot flash system_a system.img_sparsechunk.2
fastboot flash system_a system.img_sparsechunk.3
fastboot flash system_a system.img_sparsechunk.4
fastboot flash system_a system.img_sparsechunk.5
fastboot flash system_b system.img_sparsechunk.0
fastboot flash system_b system.img_sparsechunk.1
fastboot flash system_b system.img_sparsechunk.2
fastboot flash system_b system.img_sparsechunk.3
fastboot flash system_b system.img_sparsechunk.4
fastboot flash system_b system.img_sparsechunk.5
fastboot flash oem_a oem.img
fastboot flash oem_b oem.img
fastboot erase carrier
fastboot erase ddr
fastboot oem fb_mode_clear

