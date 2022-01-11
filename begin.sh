#!/bin/sh
set -e
mkdir /var/lib/luigi-server/
sudo luigid --background
export LUIGI_CONFIG_PATH='./luigi.cfg'
export PYTHONPATH='.' 
python -m luigi --module luigi-tasks Pipeline1 --local-scheduler
#python luigi-tasks.py Pipeline1
echo $?
