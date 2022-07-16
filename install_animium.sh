echo Installing Animium...
git clone --single-branch --branch chromeos https://github.com/KiaWeb/Animium.git
echo Installing some npm packages...
cd Animium
npm install
npm install kyriosli/node-zip
echo "Animium is sucessfully installed!"
