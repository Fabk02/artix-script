echo "artix" >> /etc/hostname
echo "127.0.0.1     localhost" >> /etc/hosts
echo "::1           localhost" >> /etc/hosts
echo "127.0.1.1     artix.localdomain artix" >> /etc/hosts
pacman -S dhcpcd wpa_supplicant connman-runit
ln -s /etc/runit/sv/connmand /etc/runit/runsvdir/default
echo "SYSTEM READY, PLEASE EXIT CHROOT AND REBOOT THE SYSTEM"