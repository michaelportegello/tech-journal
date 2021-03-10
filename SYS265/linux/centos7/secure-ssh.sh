#secure-ssh.sh
#author michaelportegello
#creates a new ssh user using $1 parameter
#adds a public key from the local repo or curled from the remote repo
#removes roots ability to ssh in
echo sudo useradd -m -d /home/sys265 -s /bin/bash sys265
echo sudo mkdir /home/sys265/.ssh
echo sudo cp SYS265/linux/public-keys/key.pub /home/sys265/.ssh/authorized_keys
echo sudo chmod 700 /home/sys265/.ssh
echo sudo chmod 600 /home/sys265/.ssh/authorized_keys
echo sudo chown -R sys265:sys265 /home/sys265/.ssh
