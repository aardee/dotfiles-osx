#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   asdf tools\n\n"

asdf_install "GO" "golang" "https://github.com/kennyp/asdf-golang.git" "latest"
asdf_install "NodeJS" "nodejs" "https://github.com/asdf-vm/asdf-nodejs.git" "latest" 
asdf_install "AWS CLI" "awscli" "https://github.com/MetricMike/asdf-awscli.git" "latest"
asdf_install "Gradle" "gradle" "https://github.com/rfrancis/asdf-gradle.git" "latest"
asdf_install "Groovy" "groovy" "https://github.com/weibemoura/asdf-groovy.git" "latest" 
asdf_install "Maven" "maven" "https://github.com/halcyon/asdf-maven" "latest" 
asdf_install "Python" "python" "https://github.com/asdf-community/asdf-python" "latest" 
