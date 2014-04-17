#!/bin/bash

# Run the correct version of python!
pyenv shell barbican27

# Work from HOME today
cd ~

# Clone barbican to HOME
git clone https://github.com/stackforge/barbican.git

# Start working
cd barbican
bin/barbican.sh install


