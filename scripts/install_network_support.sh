echo 'auto eth1' | sudo tee --append /etc/network/interfaces.d/eth1.cfg
echo 'iface eth1 inet dhcp' | sudo tee --append /etc/network/interfaces.d/eth1.cfg
sudo service networking restart
sleep 5