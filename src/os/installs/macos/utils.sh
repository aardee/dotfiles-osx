#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
asdf_install(){
    declare -r PLUGIN_READABLE_NAME="$1"
    declare -r PLUGIN="$2"
    declare -r PLUGIN_URL="$3"
    declare -r PLUGIN_VERSION="$4"

     # Check if `asdf` is installed.
    if ! cmd_exists "asdf"; then
        print_error "$PLUGIN_READABLE_NAME ('asdf' is not installed)"
        return 1
    fi

     # Install the specified plugin.
    execute \
        "asdf plugin add $PLUGIN $PLUGIN_URL" \
        "Adding plugin: $PLUGIN_READABLE_NAME"

    execute \
        "asdf install $PLUGIN $PLUGIN_VERSION" \
        "Installing plugin: $PLUGIN_READABLE_NAME"    

    execute \
        "asdf global $PLUGIN $PLUGIN_VERSION" \
        "Setting global version: $PLUGIN_READABLE_NAME"
}

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
brew_install() {

    declare -r ARGUMENTS="$3"
    declare -r FORMULA="$2"
    declare -r FORMULA_READABLE_NAME="$1"
    declare -r TAP_VALUE="$4"

    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    # Check if `Homebrew` is installed.

    if ! cmd_exists "brew"; then
        print_error "$FORMULA_READABLE_NAME ('Homebrew' is not installed)"
        return 1
    fi

    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    # If `brew tap` needs to be executed,
    # check if it executed correctly.

    if [ -n "$TAP_VALUE" ]; then
        if ! brew_tap "$TAP_VALUE"; then
            print_error "$FORMULA_READABLE_NAME ('brew tap $TAP_VALUE' failed)"
            return 1
        fi
    fi

    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    # Install the specified formula.

    # shellcheck disable=SC2086
    if brew list "$FORMULA" &> /dev/null; then
        print_success "$FORMULA_READABLE_NAME"
    else
        execute \
            "brew install $FORMULA $ARGUMENTS" \
            "$FORMULA_READABLE_NAME"
    fi

}

brew_prefix() {

    local path=""

    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    if path="$(brew --prefix 2> /dev/null)"; then
        printf "%s" "$path"
        return 0
    else
        print_error "Homebrew (get prefix)"
        return 1
    fi

}

brew_tap() {
    brew tap "$1" &> /dev/null
}

brew_update() {

    execute \
        "brew update" \
        "Homebrew (update)"

}

brew_upgrade() {

    execute \
        "brew upgrade" \
        "Homebrew (upgrade)"

}
