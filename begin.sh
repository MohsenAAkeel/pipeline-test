#!/bin/sh
set -e
export LUIGI_CONFIG_PATH='.'
export PYTHONPATH='.' 
#python -m luigi --module luigi-tasks Pipeline1 --local-scheduler
pythong luigi-tasks.py Pipeline1
echo $?
