echo "Starting bootstrapping"

# Check for Homebrew, install if we don't have it
if test ! $(which brew); then
    echo "Installing homebrew..."
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update homebrew recipes
brew update


export HOMEBREW_NO_AUTO_UPDATE=1

Cask=('homebrew/cask-versions/adoptopenjdk8' 'keka' 'google-chrome' 'soapui' 'rstudio' 'r' 'firefox' 'spectacle' 'vlc' 'intellij-idea' 'visual-studio-code' 'iterm2' 'docker' 'postman');
 
NoCask=('wget' 'bash' 'httpie' 'git' 'tree' 'vim' 'tldr' 'maven' 'zsh' 'npm' 'cowsay' 'gradle');
 
  
for c in "${Cask[@]}"; do
echo "brew cask install $c";
brew cask install $c
done
 
for nc in "${NoCask[@]}"; do
echo "brew install $nc";
brew install $nc
done

echo "Cleaning up..."
brew cleanup

echo "Installing fonts..."
FONTS=(
    font-inconsolidata
    font-roboto
    font-clear-sans
    font-source-code-pro
)

brew cask install ${FONTS[@]}


echo "Configuring OSX..."

# Set fast key repeat rate
defaults write NSGlobalDomain KeyRepeat -int 0

# Require password as soon as screensaver or sleep mode starts
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 0

# Show filename extensions by default
#defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Enable tap-to-click
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

# Disable "natural" scroll
defaults write NSGlobalDomain com.apple.swipescrolldirection -bool false


echo "Bootstrapping complete"

