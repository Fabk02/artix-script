ln -s /etc/runit/sv/ntpd /run/runit/service/
sv up ntpd
basestrap /mnt base base-devel runit elogind-runit linux linux-firmware
fstabgen -U /mnt >> /mnt/etc/fstab
artix-chroot /mnt bash Artix_p2.sh