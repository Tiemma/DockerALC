
mkdir -p ~/Docker/{$2,$3}

cd ~/Docker

rm  -rf api/

sudo yum install git docker

git clone https://github.com/Tiemma/UserManager api/

