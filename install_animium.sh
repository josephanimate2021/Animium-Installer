echo Installing Animium...
git clone --single-branch --branch chromeos https://github.com/KiaWeb/Animium.git
echo Installing some npm packages...
cd Animium
sudo bash ./installDepends.sh
echo Animium is sucessfully installed!
pause
