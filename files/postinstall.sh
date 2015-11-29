#!/bin/sh

pip install ansible

echo "#!/bin/bash" > /home/lunix/getstarted.sh
echo ""  >> /home/lunix/getstarted.sh
echo "mkdir /home/lunix/.ssh"  >> /home/lunix/getstarted.sh
echo "cp -a * /home/lunix/.ssh/"  >> /home/lunix/getstarted.sh
echo "chown -R lunix:lunix /home/lunix/.ssh"  >> /home/lunix/getstarted.sh
echo "chmod -R 600 /home/lunix/.ssh"  >> /home/lunix/getstarted.sh
echo "chmod 700 /home/lunix/.ssh"  >> /home/lunix/getstarted.sh
echo ""  >> /home/lunix/getstarted.sh
echo 'eval "$(ssh-agent)"' >> /home/lunix/getstarted.sh
echo "ssh-add"  >> /home/lunix/getstarted.sh
echo "" >> /home/lunix/getstarted.sh
echo "git clone git@bitbucket.org:aussielunix/ansible-laptop.git /home/lunix/.ansible" >> /home/lunix/getstarted.sh
echo "cd /home/lunix/.ansible" >> /home/lunix/getstarted.sh
echo "echo 'you need to tune e/n/i'" >> /home/lunix/getstarted.sh
echo "" >> /home/lunix/getstarted.sh
