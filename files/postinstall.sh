#!/bin/sh

pip install ansible

echo "#!/bin/bash" > /home/lunix/getstarted.sh
echo "" >> /home/lunix/getstarted.sh
echo "git clone git@bitbucket.org:aussielunix/ansible-laptop.git" >> /home/lunix/getstarted.sh
echo "cd ~/.ansible" >> /home/lunix/getstarted.sh
echo 'eval "$(ssh-agent)"' >> /home/lunix/getstarted.sh

