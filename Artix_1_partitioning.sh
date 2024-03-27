#!/bin/bash
parted /dev/sda --script mklabel gpt\
parted -a optimal /dev/sda --script mkpart "EFI" fat32 1MiB 512MiB\
parted -a optimal /dev/sda --script mkpart "swap" linux-swap 512MiB 2560MiB\
parted -a optimal /dev/sda --script mkpart "root" ext4 2560MiB 100%
