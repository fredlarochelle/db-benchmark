#!/bin/bash
set -e

# install dependencies
# sudo apt-get update -qq

virtualenv daft/daft --python=python3
source daft/daft/bin/activate

python3 -m pip install --upgrade psutil getdaft numpy

# build
deactivate

./daft/upg-daft.sh

./daft/ver-daft.sh

# check
# source daft/daft/bin/activate
# python3
# import daft
# daft.__version__
# quit()
# deactivate

# fix: print(ans.head(3), flush=True): UnicodeEncodeError: 'ascii' codec can't encode characters in position 14-31: ordinal not in range(128)
# vim daft/daft/bin/activate
#deactivate () {
#    unset PYTHONIOENCODING
#    ...
#}
#...
#PYTHONIOENCODING="utf-8"
#export PYTHONIOENCODING
#...
