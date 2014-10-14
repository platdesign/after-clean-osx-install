#!/bin/sh

# Create some folders
mkdir -p /usr/local/bin
mkdir -p /usr/local/lib
mkdir -p ${HOME}/lib



# Install Homebrew
mkdir -p ${HOME}/bin/Homebrew
curl -L https://github.com/Homebrew/homebrew/tarball/master | tar xz --strip 1 -C "${HOME}/bin/Homebrew"
ln -s ${HOME}/bin/Homebrew /usr/local/bin/brew
brew update


# Install Nodejs
brew install node

# Install Git
brew install git


# Install Bower, Gulp, yeoman, localtunnel, browser-sync, express-generator@4
npm install -g bower gulp yo localtunnel browser-sync express-generator@4


# Install dotfiles
bash -c "$(curl -fsSL raw.github.com/drublic/dotfiles/master/bin/dotfiles)"

# Install uberdeploy
bash -c "$(curl -fsSL https://raw.githubusercontent.com/platdesign/uberdeploy/master/install.sh)"


# Create Link to sublimetext
ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" /usr/local/bin/subl
