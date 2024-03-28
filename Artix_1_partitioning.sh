parted -s /dev/sda mklabel gpt
parted -s /dev/sda mkpart "EFI" fat32 1MiB 513MiB
parted -s /dev/sda set 1 esp on
parted -s /dev/sda mkpart "SWAP" 513MiB 2560MiB
parted -s /dev/sda set 2 swap on
parted -s /dev/sda mkpart "ROOT" ext4 2560MiB 100%
