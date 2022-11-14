#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Miscellaneous Tools\n\n"

brew_install "ShellCheck" "shellcheck"
#brew_install "Visual Studio Code" "visual-studio-code" "caskroom/cask" "cask"
brew_install "Slack" "slack" "caskroom/cask" "cask"
brew_install "1password" "1password" "caskroom/versions" "cask"
brew_install "dropbox" "dropbox" "caskroom/versions" "cask"
brew_install "evernote" "evernote" "caskroom/versions" "cask"
brew_install "devonthink-pro-office" "devonthink-pro-office" "caskroom/versions" "cask"
brew_install "scansnap-manager-ix500" "fujitsu-scansnap-manager-ix500" "caskroom/drivers" "cask"
brew_install "hazel" "hazel" "caskroom/versions" "cask"
brew_install "CyberDuck File Transfer App" "cyberduck" "caskroom/cask" "cask"

#Improved top (interactive process viewer) for OS X (https://github.com/max-horvath/htop-osx)
brew_install "htop-osx" "htop-osx"

if [ -d "$HOME/.nvm" ]; then
    brew_install "Yarn" "yarn"
fi
