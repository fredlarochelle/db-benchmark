#!/bin/bash
set -e

source ./daft/daft/bin/activate
python3 -c 'import daft; open("daft/VERSION","w").write(daft.__version__); open("daft/REVISION","w").write("");' > /dev/null
