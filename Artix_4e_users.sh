echo 'root:123' | chpasswd
useradd -m user
echo 'user:123' | chpasswd
usermod -aG wheel user
sed -i 's/# %wheel ALL=(ALL:ALL) ALL/%wheel ALL=(ALL:ALL) ALL/' /etc/sudoers
