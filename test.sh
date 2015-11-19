#!/bin/bash
set -e

echo "Clone a package from source."
git clone https://github.com/commonform/commonform-cli commonform-cli

echo "Link it."
cd commonform-cli
npm link
cd

echo "Show it's linked."
commonform --version

echo "Remove the linked directory."
rm -rf commonform-cli

echo "Attempt to install from the public repository."
npm i -g commonform-cli

echo "Show it's installed."
commonform --version
