echo Installing Animium...
git clone https://github.com/josephanimate2021/Animium-For-Linux.git
echo Installing some packages...
curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash -
sudo apt-get install -y nodejs
echo Using Node.js
node -v
echo Using npm version
npm -v
echo Peforming an npm upgrade...
npm install -g npm@8.14.0
echo now back to installing packages...
cd Animium
npm install
npm install kyriosli/node-zip
echo "Animium is sucessfully installed!"
