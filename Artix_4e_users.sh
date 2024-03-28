echo 'root:123' | chpasswd
useradd -m -G sudo user
echo 'user:123' | chpasswd
