#!/usr/bin/sh
# Copy the file to the `build` (compile output) directory, then run
arm-none-eabi-strip.exe -v -s -O binary -o DAP_Link_for_JLinkOB_release.elf DAP_Link_for_JLinkOB.bin
arm-none-eabi-objcopy.exe -S -O binary DAP_Link_for_JLinkOB.elf DAP_Link_for_JLinkOB.bin