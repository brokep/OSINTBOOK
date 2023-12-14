#!/usr/bin/env bash
## Updated: Updated: April 17, 2023
## For use ONLY with Ubuntu 22.04
## These will assist with the creation of your custom machine and will be updated as things change
## Full usage details are available in the book: https://inteltechniques.com/book1.html
## Slight variations may be present for Windows/Mac users (such as 'Next' vs. 'Continue')
## Please report any issues to errors@inteltechniques.com
## Copyright 2023 Michael Bazzell
## These instructions are provided 'as is' without warranty of any kind
## In no event shall the copyright holder be liable for any claim, damages or other liability
## Full license information and restrictions at https://inteltechniques.com/osintbook10/license.txt

sudo adduser osint vboxsf
sudo apt purge -y apport apport-symptoms popularity-contest ubuntu-report whoopsie
sudo apt autoremove -y
sudo apt update
sudo apt install -y build-essential dkms gcc make perl
sudo rcvboxadd setup
sudo snap remove --purge firefox
sudo add-apt-repository -y ppa:mozillateam/ppa
echo '
Package: *
Pin: release o=LP-PPA-mozillateam
Pin-Priority: 1001
' | sudo tee /etc/apt/preferences.d/mozilla-firefox
sudo apt install -y firefox
sudo apt install -y curl
cd ~/Desktop
firefox &
sleep 30
pkill -f firefox
curl -O https://inteltechniques.com/data/osintbook10/ff-template.zip
unzip ff-template.zip -d ~/.mozilla/firefox/
cd ~/.mozilla/firefox/ff-template/
cp -R * ~/.mozilla/firefox/*.default-release
cd ~/Desktop
rm ff-template.zip
sudo snap install chromium
sudo apt install torbrowser-launcher -y
sudo apt install -y vlc
sudo apt install -y ffmpeg
sudo apt install -y python3-pip
sudo pip install -U youtube-dl
sudo pip install -U yt-dlp
cd ~/Desktop
sudo apt install -y curl
curl -O https://inteltechniques.com/data/osintbook10/vm-files.zip
unzip vm-files.zip -d ~/Desktop/
mkdir ~/Documents/scripts
mkdir ~/Documents/icons
cd ~/Desktop/vm-files/scripts
cp * ~/Documents/scripts
cd ~/Desktop/vm-files/icons
cp * ~/Documents/icons
cd ~/Desktop/vm-files/shortcuts
sudo cp * /usr/share/applications/
cd ~/Desktop
rm vm-files.zip
rm -rf vm-files
sudo apt install -y python3-venv
mkdir ~/Downloads/Programs
mkdir ~/Downloads/Programs/Streamlink
cd ~/Downloads/Programs/Streamlink
python3 -m venv streamlinkEnvironment
source streamlinkEnvironment/bin/activate
sudo pip install streamlink 2>/dev/null
deactivate
sudo apt install -y git
mkdir ~/Downloads/Programs/Instalooter
cd ~/Downloads/Programs/Instalooter
python3 -m venv instalooterEnvironment
source instalooterEnvironment/bin/activate
sudo pip install instalooter 2>/dev/null
deactivate
mkdir ~/Downloads/Programs/Instaloader
cd ~/Downloads/Programs/Instaloader
python3 -m venv instaloaderEnvironment
source instaloaderEnvironment/bin/activate
sudo pip install instaloader 2>/dev/null
deactivate
mkdir ~/Downloads/Programs/Toutatis
cd ~/Downloads/Programs/Toutatis
python3 -m venv toutatisEnvironment
source toutatisEnvironment/bin/activate
sudo pip install toutatis 2>/dev/null
deactivate
cd ~/Downloads/Programs
git clone https://github.com/Datalux/Osintgram.git
cd Osintgram
python3 -m venv OsintgramEnvironment
source OsintgramEnvironment/bin/activate
sudo pip install -r requirements.txt 2>/dev/null
deactivate
sed -i 's/followinfnumbers/followingnumbers/g' ~/Documents/scripts/instagram.sh
sudo apt-get install libncurses5-dev libffi-dev -y
mkdir ~/Downloads/Programs/Gallery-DL
cd ~/Downloads/Programs/Gallery-DL
python3 -m venv gallerydlEnvironment
source gallerydlEnvironment/bin/activate
sudo pip install -U gallery-dl 2>/dev/null
deactivate
cd ~/Downloads
sudo apt install default-jre -y
wget https://github.com/ripmeapp/ripme/releases/latest/download/ripme.jar
chmod +x ripme.jar
cd ~/Downloads/Programs
git clone https://github.com/sherlock-project/sherlock.git
cd sherlock
python3 -m venv SherlockEnvironment
source SherlockEnvironment/bin/activate
sudo pip install -r requirements.txt 2>/dev/null
deactivate
mkdir ~/Downloads/Programs/socialscan
cd ~/Downloads/Programs/socialscan
python3 -m venv socialscanEnvironment
source socialscanEnvironment/bin/activate
sudo pip install -U socialscan 2>/dev/null
deactivate
mkdir ~/Downloads/Programs/holehe
cd ~/Downloads/Programs/holehe
python3 -m venv holeheEnvironment
source holeheEnvironment/bin/activate
sudo pip install -U holehe 2>/dev/null
deactivate
cd ~/Downloads/Programs
git clone https://github.com/WebBreacher/WhatsMyName.git
cd WhatsMyName/whatsmyname
python3 -m venv WhatsMyNameEnvironment
source WhatsMyNameEnvironment/bin/activate
sudo pip install -r requirements.txt 2>/dev/null
deactivate
cd ~/Downloads/Programs
git clone https://github.com/p1ngul1n0/blackbird
cd blackbird
python3 -m venv blackbirdEnvironment
source blackbirdEnvironment/bin/activate
sudo pip install -r requirements.txt 2>/dev/null
deactivate
mkdir ~/Downloads/Programs/Maigret
cd ~/Downloads/Programs/Maigret
python3 -m venv maigretEnvironment
source maigretEnvironment/bin/activate
sudo pip install maigret
deactivate
cd ~/Downloads/Programs
git clone https://github.com/martinvigo/email2phonenumber.git
cd email2phonenumber
python3 -m venv email2phonenumberEnvironment
source email2phonenumberEnvironment/bin/activate
sudo pip install -r requirements.txt 2>/dev/null
deactivate
sudo pip install pipx
pipx ensurepath
pipx install ghunt
pipx ensurepath
cd ~/Downloads/Programs
git clone https://github.com/FortyNorthSecurity/EyeWitness.git
cd EyeWitness/Python/setup
sudo ./setup.sh
cd ~/Documents/scripts
sed -i 's/ChrisTruncer/FortyNorthSecurity/g' updates.sh
cd ~/Downloads/Programs
wget https://github.com/mozilla/geckodriver/releases/download/v0.32.0/geckodriver-v0.32.0-linux-aarch64.tar.gz
tar -xvzf geckodriver*
chmod +x geckodriver
sudo mv geckodriver /usr/local/bin
sudo snap install amass
cd ~/Downloads/Programs
git clone https://github.com/aboul3la/Sublist3r.git
cd Sublist3r
python3 -m venv Sublist3rEnvironment
source Sublist3rEnvironment/bin/activate
sudo pip install -r requirements.txt 2>/dev/null
deactivate
cd ~/Downloads/Programs
git clone https://github.com/s0md3v/Photon.git
cd Photon
python3 -m venv PhotonEnvironment
source PhotonEnvironment/bin/activate
sudo pip install -r requirements.txt 2>/dev/null
deactivate
cd ~/Downloads/Programs
git clone https://github.com/laramies/theHarvester.git
cd theHarvester
python3 -m venv theHarvesterEnvironment
source theHarvesterEnvironment/bin/activate
sudo pip install -r requirements.txt 2>/dev/null
deactivate
sudo pip install testresources 2>/dev/null
sudo pip install webscreenshot 2>/dev/null
cd ~/Downloads/Programs
git clone https://github.com/Lazza/Carbon14
cd Carbon14
python3 -m venv Carbon14Environment
source Carbon14Environment/bin/activate
sudo pip install -r requirements.txt 2>/dev/null
deactivate
sudo apt install -y mediainfo-gui
sudo apt install -y libimage-exiftool-perl
sudo apt install -y mat2
mkdir ~/Downloads/Programs/xeuledoc
cd ~/Downloads/Programs/xeuledoc
python3 -m venv xeuledocEnvironment
source xeuledocEnvironment/bin/activate
sudo pip install -U xeuledoc 2>/dev/null
deactivate
cd ~/Downloads/Programs
sudo apt install subversion -y
git clone https://github.com/GuidoBartoli/sherloq.git
cd sherloq/gui
python3 -m venv sherloqEnvironment
source sherloqEnvironment/bin/activate
sudo pip install -r requirements.txt 2>/dev/null
deactivate
sudo apt install -y httrack webhttrack
sudo apt install -y libcanberra-gtk-module
cd ~/Downloads/Programs
git clone https://github.com/opsdisk/metagoofil.git
cd metagoofil
python3 -m venv metagoofilEnvironment
source metagoofilEnvironment/bin/activate
sudo pip install -r requirements.txt 2>/dev/null
deactivate
mkdir ~/Downloads/Programs/bdfr
cd ~/Downloads/Programs/bdfr
python3 -m venv bdfrEnvironment
source bdfrEnvironment/bin/activate
sudo pip install -U bdfr 2>/dev/null
deactivate
mkdir ~/Downloads/Programs/redditsfinder
cd ~/Downloads/Programs/redditsfinder
python3 -m venv redditsfinderEnvironment
source redditsfinderEnvironment/bin/activate
sudo pip install -U redditsfinder 2>/dev/null
deactivate
cd ~/Downloads/Programs
git clone https://github.com/MalloyDelacroix/DownloaderForReddit.git
cd DownloaderForReddit
python3 -m venv DownloaderForRedditEnvironment
source DownloaderForRedditEnvironment/bin/activate
sudo pip install -r requirements.txt 2>/dev/null
deactivate
wget http://dl.google.com/dl/earth/client/current/google-earth-stable_current_amd64.deb
sudo apt install -y ./google-earth-stable_current_amd64.deb
sudo rm google-earth-stable_current_amd64.deb
sudo apt install -y kazam
sudo apt install bleachbit
sudo apt update --fix-missing
sudo apt -y upgrade
sudo apt --fix-broken install
cd ~/Desktop
curl -O https://inteltechniques.com/data/osintbook10/tools.zip
unzip tools.zip -d ~/Desktop/
rm tools.zip
rm -rf __MACOSX
mkdir ~/Downloads/Programs/waybackpy
cd ~/Downloads/Programs/waybackpy
python3 -m venv waybackpyEnvironment
source waybackpyEnvironment/bin/activate
sudo pip install -U waybackpy 2>/dev/null
deactivate
mkdir ~/Downloads/Programs/changedetection
cd ~/Downloads/Programs/changedetection
python3 -m venv changedetectionEnvironment
source changedetectionEnvironment/bin/activate
sudo pip install changedetection.io 2>/dev/null
deactivate
mkdir ~/Downloads/Programs/archivebox
cd ~/Downloads/Programs/archivebox
python3 -m venv archiveboxEnvironment
source archiveboxEnvironment/bin/activate
sudo pip install archivebox
deactivate
mkdir ~/Documents/archivebox
cd ~/Documents/archivebox
archivebox init
cd ~/Downloads/Programs
git clone https://github.com/smicallef/spiderfoot.git
cd spiderfoot
python3 -m venv spiderfootEnvironment
source spiderfootEnvironment/bin/activate
sudo pip install -r requirements.txt 2>/dev/null
deactivate
cd ~/Downloads/Programs
git clone https://github.com/lanmaster53/recon-ng.git
cd recon-ng
python3 -m venv recon-ngEnvironment
source recon-ngEnvironment/bin/activate
sudo pip install -r REQUIREMENTS 2>/dev/null
deactivate
sudo pip install -U openai-whisper
mkdir ~/.cache/whisper
cd ~/.cache/whisper
wget https://openaipublic.azureedge.net/main/whisper/models/9ecf779972d90ba49c06d968637d720dd632c55bbf19d441fb42bf17a411e794/small.pt
cd ~/Documents/scripts
rm video-utilities.sh
wget https://inteltechniques.com/data/osintbook10/video-utilities.sh
chmod +x video-utilities.sh
sed -i 's/cd \~\/Downloads\/Programs\/internetarchive/sudo pip install \-U openai\-whisper\ncd \~\/Downloads\/Programs\/internetarchive/g' updates.sh 
mkdir ~/Downloads/Programs/internetarchive
cd ~/Downloads/Programs/internetarchive
python3 -m venv internetarchiveEnvironment
source internetarchiveEnvironment/bin/activate
sudo pip install -U internetarchive 2>/dev/null
deactivate
sudo apt install -y ripgrep
cd ~/Downloads/Programs
git clone https://github.com/AmIJesse/Elasticsearch-Crawler.git
sudo pip install nested-lookup 2>/dev/null
sudo apt install -y jq
mkdir ~/Downloads/Programs/search-that-hash
cd ~/Downloads/Programs/search-that-hash
python3 -m venv search-that-hashEnvironment
source search-that-hashEnvironment/bin/activate
sudo pip install -U search-that-hash 2>/dev/null
deactivate
mkdir ~/Downloads/Programs/name-that-hash
cd ~/Downloads/Programs/name-that-hash
python3 -m venv name-that-hashEnvironment
source name-that-hashEnvironment/bin/activate
sudo pip install -U name-that-hash 2>/dev/null
deactivate
mkdir ~/Downloads/Programs/h8mail
cd ~/Downloads/Programs/h8mail
python3 -m venv h8mailEnvironment
source h8mailEnvironment/bin/activate
sudo pip install -U h8mail 2>/dev/null
deactivate
cd ~/Downloads
h8mail -g
sed -i 's/\;leak\-lookup\_pub/leak\-lookup\_pub/g' h8mail_config.ini
gsettings set org.gnome.desktop.background picture-uri ''
gsettings set org.gnome.desktop.background primary-color 'rgb(66, 81, 100)'
gsettings set org.gnome.shell favorite-apps []
gsettings set org.gnome.shell.extensions.dash-to-dock dock-position BOTTOM
gsettings set org.gnome.shell favorite-apps "['firefox.desktop', 'chromium_chromium.desktop', 'torbrowser.desktop', 'org.gnome.Nautilus.desktop', 'org.gnome.Terminal.desktop', 'updates.desktop', 'tools.desktop', 'video-download.desktop', 'video-utilities.desktop', 'video-stream.desktop', 'instagram.desktop', 'galleries.desktop', 'users-emails.desktop', 'captures.desktop', 'domains.desktop', 'metadata.desktop', 'archives.desktop', 'documents.desktop', 'breaches-leaks.desktop', 'reddit.desktop', 'spiderfoot.desktop', 'recon-ng.desktop', 'api.desktop', 'google-earth-pro.desktop', 'kazam.desktop', 'gnome-control-center.desktop']"
gsettings set org.gnome.shell.extensions.dash-to-dock dash-max-icon-size 32
sudo apt autoremove -y
echo
read -rsp $'Press enter to continue, reboot, then launch the Updates script.\n'
echo
