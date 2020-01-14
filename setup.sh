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

echo "Installing Python3"
brew install python3

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

echo "Installing aws cli"
pip3 install awscli --upgrade --user

echo "Remove any files controlled by nvm"
rm -rf /usr/local/lib/node_modules # delete any node modules
rm /usr/local/bin/node # delete node if installed
cd /usr/local/bin && ls -l | grep “../lib/node_modules/” | awk ‘{print $9}’| xargs rm #delete global alias

echo "Installing NVM"
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.35.0/install.sh | bash

echo "Reload Profile"
. ~/.zshrc

echo "Installing Node"
nvm install --lts
