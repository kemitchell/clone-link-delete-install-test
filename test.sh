#!/bin/bash

# Clone a package from source.
git clone https://github.com/commonform/commonform-cli commonform-cli

# Link it.
( cd commonform-cli && npm link )

# Show it's linked.
commonform --version

# Remove the linked directory.
rm -rf commonform-cli

# Attempt to install from the public repository.
npm i -g commonform-cli
