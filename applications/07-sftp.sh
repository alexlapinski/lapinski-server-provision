#!/bin/sh

# TODO: Edit the /etc/ssh/sshd_config
# to include the following
#
echo "Updating SSH Config"
# TODO: Only update if the lines are not present in the file
new_sshd_config=<<EOF
Match group sftp
ChrootDirectory /home
X11Forwarding no
AllowTcForwarding no
ForceCommand internal-sftp
EOF
echo "Done\n"

echo "Restarting SSH"
sudo service ssh restart
echo "Done\n"

echo "Creating SFTP User"
sudo addgroup sftp
sudo useradd -m sftpuser -g sftp
echo "momoiro72" | sudo passwd sftpuser
sudo chmod 700 /home/sftpuser
echo "Done\n"

