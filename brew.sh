#!/usr/bin/env zsh
## lifted from https://github.com/mathiasbynens/dotfiles/blob/master/brew.sh

## Install command-line tools using Homebrew.

## Make sure we’re using the latest Homebrew.
brew update

## Upgrade any already-installed formulae.
# brew upgrade

# Save Homebrew’s installed location.
# BREW_PREFIX=$(brew --prefix)

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
# ln -s "${BREW_PREFIX}/bin/gsha256sum" "${BREW_PREFIX}/bin/sha256sum"

# Install `wget` with IRI support.
brew install ag
brew install autojump
brew install bat
brew install fzf
brew install git
brew install go
brew install grep
brew install grip
brew install httpie
brew install hub
brew install jq
brew install lastpass-cli
brew install lua
brew install neovim
brew install nnn
brew install nvm
brew install openssh
brew install pianobar
brew install ripgrep
brew install task
brew install tig
brew install tmux
brew install trash
brew install tree
brew install watch
brew install wget --with-iri

## install gui apps
# brew install cask
# brew tap caskroom/cask
brew cask install aerial
brew cask install alfred
brew cask install beersmith2
brew cask install docker
brew cask install firefox
brew cask install flycut
brew cask install font-monoid-nerd-font-mono
brew cask install fork
brew cask install google-backup-and-sync
brew cask install google-chrome
brew cask install iterm2
brew cask install keybase
brew cask install kindle
brew cask install postman
brew cask install skitch
brew cask install slack
brew cask install spectacle
brew cask install tweetbot
brew cask install twitter


# Remove outdated versions from the cellar.
brew cleanup
