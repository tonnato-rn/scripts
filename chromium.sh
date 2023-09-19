echo 'installing chromium...'
sudo add-apt-repository 'deb https://ppa.launchpadcontent.net/canonical-chromium-builds/stage/ubuntu/' bionic main

echo '
Package: chromium*
Pin: release o=LP-PPA-canonical-chromium-builds
Pin-Priority: 1001

Package: chromium*
Pin: release o=Ubuntu*
Pin-Priority: -1
' | sudo tee /etc/apt/preferences.d/chromium-browser > /dev/null

echo '
CHROMIUM_FLAGS="--enable-features=WebUIDarkMode --force-dark-mode"
' | sudo tee /etc/chromium-browser/customizations/dark > /dev/null

sudo apt install -y chromium-browser
