echo 'root:123' | chpasswd
useradd -m user
echo 'user:123' | chpasswd
usermod -aG wheel user
