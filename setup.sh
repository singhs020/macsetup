echo "Setting up your MAC"

echo "Installing X-Code Command Line tools"
xcode-select --install

echo "Update Home brew"
brew update

echo "Installing GIT"
brew install git

echo "Setup Git"
git config --global user.name "<ADD USER NAME>"
git config --global user.email "<ADD EMAIL>"

echo "Installing Node"
brew install node

echo "Tap Cask"
brew cask

echo "Installing Applications"

# Add apps here =>> The formuale can be looked at https://formulae.brew.sh/cask/
apps = (
  visual-studio-code
  iterm2
  firefox
  google-chrome
  slack
  docker
)

brew cask install ${apps[@]}

echo "Cleanup the Mess"
brew cask cleanup
brew cleanup