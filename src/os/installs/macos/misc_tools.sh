#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Miscellaneous Tools\n\n"

brew_install "ShellCheck" "shellcheck"

#Improved top (interactive process viewer) for OS X (https://github.com/max-horvath/htop-osx)
brew_install "htop-osx" "htop-osx"

brew_install "awscli" "awscli"

brew_install "Slack" "slack" "--cask"
brew_install "1password" "1password" "--cask"
brew_install "dropbox" "dropbox" "--cask"
brew_install "evernote" "evernote" "--cask"
brew_install "DEVONthink" "devonthink" "--cask"
brew_install "Scansnap Manager ix500" "fujitsu-scansnap-manager-ix500" "--cask"
brew_install "Hazel" "hazel" "--cask"
brew_install "CyberDuck File Transfer App" "cyberduck" "--cask"

brew_install "Miro" "miro" "--cask"
brew_install "Notion" "notion" "--cask"
brew_install "Skitch" "skitch" "--cask"

#Android File Transfer
brew_install "Android File Transfer" "android-file-transfer" "--cask"

#Application launcher and productivity software
brew_install "Alfred" "alfred" "--cask"

#Tool to hide status bar icons
brew_install "Dozer" "dozer" "--cask"

#TO-DO List manager
brew_install "TODOist" "todoist" "--cask"

#iTerm2
brew_install "iTerm2" "iterm2" "--cask"

brew_install "Grammarly" "grammarly" "--cask"

#Animated screen capture application
brew_install "LICEcap" "licecap" "--cask"

#Tool to list all active shortcuts of the current application
brew_install "cheatsheet" "cheatsheet" "--cask"

#Notetaking tool
brew_install "WorkFlowy" "workflowy" "--cask"

brew_install "spotify" "spotify" "--cask"
brew_install "Postman" "postman" "--cask"
brew_install "Textmate Editor" "textmate" "--cask"
brew_install "Sublime Text Editor" "sublime-text" "--cask"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Install MAS apps
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Magnet
mas install 441258766
