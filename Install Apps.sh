GREEN='\033[0;32m'
NC='\033[0m'
#wget download.netbeans.org/netbeans/8.2/final/bundles/netbeans-8.2-linux.sh &;
echo -e " ${GREEN} instalando emacs${NC}";
sudo apt install -y emacs25;
echo -e " ${GREEN} instalando jdk 8${NC}";
sudo apt install -y openjdk-8-jdk;
echo -e " ${GREEN} instalando zsh${NC}";
sudo apt install -y zsh;
echo -e " ${GREEN} instalando git${NC}";
sudo apt install -y git;
echo -e " ${GREEN} instalando ohmyzsh${NC}";
sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)";
echo -e " ${GREEN} instalando mailspring${NC}";
sudo snap install mailspring;
echo -e " ${GREEN} instalando eclipse${NC}";
sudo snap install --classic eclipse ;
echo -e " ${GREEN} instalando maven${NC}";
sudo apt install -y maven;
echo -e " ${GREEN} instalando vlc${NC}";
sudo snap install vlc ;
echo -e " ${GREEN} instalando spacemacs${NC}";
git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d;
echo -e " ${GREEN} adecuando spacemacs${NC}";
rm ~/.spacemacs;
wget -P ~/ https://raw.githubusercontent.com/Blackphantom96/.config/master/.spacemacs;
echo -e " ${GREEN} adecuando zsh${NC}";
rm ~/.zshrc;
wget -P ~/ https://github.com/Blackphantom96/.config/blob/master/.zshrc;
echo -e " ${GREEN} instalando spotify${NC}";
sudo snap install spotify ;
echo -e " ${GREEN} instalando synaptic${NC}";
sudo apt install -y synaptic;
echo -e " ${GREEN} instalando albert${NC}";
wget -nv -O Release.key https://build.opensuse.org/projects/home:manuelschneid3r/public_key;
sudo apt-key add - < Release.key;
sudo apt-get update;
sudo sh -c "echo 'deb http://download.opensuse.org/repositories/home:/manuelschneid3r/xUbuntu_18.04/ /' > /etc/apt/sources.list.d/home:manuelschneid3r.list";
sudo apt-get update;
sudo apt-get install -y albert;
echo -e " ${GREEN} instalando kdeConnect${NC}";
sudo apt install -y kdeconnect-plasma;
echo -e " ${GREEN} instalando gnome tweaks${NC}";
sudo apt install -y gnome-tweak-tool;
echo -e " ${GREEN} instalando Okular${NC}";
sudo apt install -y okular;
echo -e " ${GREEN} instalando GNome Shell Extension${NC}";
sudo apt-get install -y chrome-gnome-shell;
echo -e " ${GREEN} instalando Source Code Pro${NC}";
wget https://github.com/adobe-fonts/source-code-pro/archive/2.030R-ro/1.050R-it.zip;
unzip 1.050R-it.zip;
mkdir -p ~/.fonts;
cp source-code-pro-*-it/OTF/*.otf ~/.fonts/;
echo -e " ${GREEN} instalando Personalizacion${NC}";
cd /tmp && rm -rf flat-remix &&
git clone https://github.com/daniruiz/flat-remix &&
mkdir -p ~/.icons && cp -r flat-remix/Flat-Remix* ~/.icons/ &&
gsettings set org.gnome.desktop.interface icon-theme "Flat-Remix";
sudo add-apt-repository ppa:ravefinity-project/ppa;
sudo apt-get update;
sudo apt-get install -y vivacious-colors ;
sudo sh -c "echo 'deb http://download.opensuse.org/repositories/home:/Horst3180/xUbuntu_16.04/ /' >> /etc/apt/sources.list.d/arc-theme.list";  
sudo apt update  ;
sudo apt install -y arc-theme ; 
echo -e " ${GREEN} instalando netbeans${NC}";
sudo chmod +x netbeans-8.2-linux.sh;
./netbeans-8.2-linux.sh;

echo -e " ${GREEN} Finalizando instalacion${NC}";
rm -rf *;
