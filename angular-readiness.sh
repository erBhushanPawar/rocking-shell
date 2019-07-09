
sudo apt-get install curl python-software-properties
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -

sudo apt install nodejs


NPM_VERSION=`npm -v`
NODE_VERSION=`node -v`

echo "Checking node @ $NODE_VERSION and npm @ $NPM_VERSION versions"

sudo npm i -g @angular/cli@latest

ng -v