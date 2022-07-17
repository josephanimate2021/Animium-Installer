echo [INFO] Installing Animium...
echo "[WARN] Animium For Linux is now LinuxAnimate. please don't expect anything to come out of animium's latest features."
git clone https://github.com/josephanimate2021/LinuxAnimate.git
echo [INST] Installing some packages...
curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash -
sudo apt-get install -y nodejs
echo Using Node.js
node -v
echo Using npm version
npm -v
echo [UPG] Peforming an npm upgrade...
npm install -g npm@8.14.0
echo [BACK TO INST] now back to installing packages...
cd LinuxAnimate
npm install
npm install kyriosli/node-zip
echo "[SUCESS] Animium is sucessfully installed!"
