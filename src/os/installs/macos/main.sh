#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
chmod 755 ./asdf.sh
chmod 755 ./asdf_tools.sh

./xcode.sh
./homebrew.sh
./asdf.sh
./bash.sh
./git.sh
./../nvm.sh
./browsers.sh
./compression_tools.sh
./gpg.sh
./image_tools.sh
./misc.sh
./misc_tools.sh
./asdf_tools.sh
./../npm.sh
./tmux.sh
./video_tools.sh
./../vim.sh
./vscode.sh
./web_font_tools.sh
