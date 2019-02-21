#SECURE-SSH.SH
#AUTHOR BENJAMIN-WHITCOMB
#Creates new ssh user called $1
#Adds a public key to that users authorized key file
#Disables root ssh

sudo useradd $1
sudo mkdir /home/$1/.ssh
sudo cp linux/public-keys/sys265.pub /home/$1/.ssh/authorized_keys
sudo chmod 700 /home/$1/.ssh
sudo chmod 600 /home/$1/.ssh/authorized_keys

