#!/bin/bash
# since 3.8 is needed, one may need
# udo apt-get install python3.8 python3.8-venv python3-venv

set -e

venv='.venv_tbsim'
if [ ! -d $venv ]; then
    echo "Creating a new virtualenv"
    virtualenv -p python3.8 $venv
fi

source $venv/bin/activate

# may also need to install python3.8-tk
sudo apt-get install python3.8-tk

pip install -e .

cd ../trajdata/
pip install -e .

cd ../Pplan/

pip install -e .

# https://stackoverflow.com/a/59667164/7278927
# create symbolic link between this ego repo, so that changes in the repo can be reflected right away
pip install -e .

echo "OK! good to go!"
echo "Just run the following:"
echo "$ source $venv/bin/activate"
