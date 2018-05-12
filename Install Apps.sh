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
echo -e " ${GREEN} instalando netbeans${NC}";
sudo chmod +x netbeans-8.2-linux.sh;
./netbeans-8.2-linux.sh;

echo -e " ${GREEN} Finalizando instalacion${NC}";
