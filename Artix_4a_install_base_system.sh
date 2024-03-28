ln -s /etc/runit/sv/ntpd /run/runit/service/
sv up ntpd
basestrap /mnt base base-devel runit elogind-runit linux linux-firmware
y
fstabgen -U /mnt >> /mnt/etc/fstab
artix-chroot /mnt
ln -sf /usr/share/zoneinfo/Europe/Rome /etc/localtime
hwclock --systohc