#secure-ssh.sh
#author michaelportegello
#creates a new ssh user using $1 parameter
#adds a public key from the local repo or curled from the remote repo
#removes roots ability to ssh in
sudo useradd -m -d /home/michael -s /bin/bash michael
sudo mkdir /home/michael/.ssh
sudo cp ~/tech-journal/SYS265/linux/public-keys/key.pub /home/michael/.ssh/authorized_keys
sudo chmod 600 /home/michael/.ssh/authorized_keys
sudo chown -R michael:michael /home/michael/.ssh
