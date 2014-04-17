#!/bin/bash

### PYENV

# Install library/bin dependencies
sudo yum install -y \
  git zlib-devel readline-devel bzip2-devel python-devel sqlite-devel

# pyenv install for CentOS/SL x86_64 
 
# Clone pyenv project to $HOME/.pyenv
git clone git://github.com/yyuu/pyenv.git ~/.pyenv

# Write shell vars to bashrc  
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bashrc
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(pyenv init -)"' >> ~/.bashrc

export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init -)"

# Install Python versions into $PYENV_ROOT/versions
pyenv install 2.7.6

# Rebuild the shim binaries
pyenv rehash

### VIRTUALENV

# Clone pyenv project to $HOME/.pyenv
git clone https://github.com/yyuu/pyenv-virtualenv.git ~/.pyenv/plugins/pyenv-virtualenv

# Create 2.7.6 Virtualenv
pyenv virtualenv 2.7.6 my-virtual-env-2.7.6

### BARBICAN VIRTUALENV CONFIG

# Installs Python 2.7.5
pyenv install 2.7.5

# Create Barbican virtual environment (for virtualenv)
pyenv virtualenv 2.7.5 barbican27

# Enter barbican virtual environment
pyenv shell barbican27

