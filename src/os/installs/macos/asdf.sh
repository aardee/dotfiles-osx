#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

install_asdf() {

    if ! cmd_exists "asdf"; then
        ask_for_sudo
        brew_install "asdf" "asdf"

        #setup PATH and Bash Completion
        echo -e "\n. $(brew --prefix asdf)/libexec/asdf.sh" >> ~/.bash.local
        echo -e "\n. $(brew --prefix asdf)/etc/bash_completion.d/asdf.sh" >> ~/.bash.local
    fi

    print_result $? "asdf"

}
