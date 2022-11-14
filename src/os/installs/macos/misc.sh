#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Miscellaneous\n\n"

brew_install "Android File Transfer" "android-file-transfer" "--cask"
brew_install "eyeD3" "eye-d3"
brew_install "Rectangle" "rectangle" "--cask"
brew_install "Unarchiver" "the-unarchiver" "--cask"
brew_install "VLC" "vlc" "--cask"

# Install GNU core utilities (those that come with OS X are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
#brew_install "coreutils" "coreutils"

# Install some other useful utilities like `sponge`.
#brew_install "moreutils" "moreutils"

# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew_install "findutils" "findutils"

# Install `wget` with IRI support.
brew_install "wget --with-iri" "wget --with-iri"

brew_install "grep" "grep"
brew_install "openssh" "openssh"
brew_install "gnu-sed --with-default-names" "gnu-sed --with-default-names"
brew_install "gnu-tar --default-names" "gnu-tar --default-names"
brew_install "gnu-which --default-names" "gnu-which --default-names"
brew_install "nmap" "nmap"
brew_install "rename" "rename"
brew_install "tree" "tree"