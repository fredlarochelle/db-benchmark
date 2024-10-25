#!/bin/bash
set -e

echo 'upgrading daft...'

source ./daft/daft/bin/activate

python3 -m pip install --upgrade getdaft > /dev/null

deactivate