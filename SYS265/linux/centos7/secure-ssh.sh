#secure-ssh.sh
#author michaelportegello
#creates a new ssh user using $1 parameter
#adds a public key from the local repo or curled from the remote repo
#removes roots ability to ssh in
sudo useradd -m -d /home/$USERNAME -s /bin/bash $USERNAME
sudo mkdir /home/$USERNAME/.ssh
sudo cp ~/tech-journal/SYS265/linux/public-keys/key.pub /home/$USERNAME/.ssh/authorized_keys
sudo chmod 600 /home/$USERNAME/.ssh/authorized_keys
sudo chown -R $USERNAME:$USERNAME /home/$USERNAME/.ssh
