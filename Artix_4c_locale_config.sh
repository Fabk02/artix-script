sed -i 's/#en_US.UTF-8 UTF-8/en_US.UTF-8 UTF-8/' /etc/locale.gen
sed -i 's/#en_US ISO-8859-1/en_US ISO-8859-1/' /etc/locale.gen
sed -i 's/#it_IT.UTF-8 UTF-8/it_IT.UTF-8 UTF-8/' /etc/locale.gen
sed -i 's/#it_IT ISO-8859-1/it_IT ISO-8859-1/' /etc/locale.gen
locale-gen
echo "export LANG=\"en_US.UTF-8\"" >> /etc/locale.conf
echo "export LC_COLLATE=\"C\"" >> /etc/locale.conf
echo "export KEYMAP=\"it\"" >> /etc/locale.conf