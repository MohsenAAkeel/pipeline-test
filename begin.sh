#!/bin/sh
# set -e
export LUIGI_CONFIG_PATH='.'
export PYTHONPATH='.' 
luigi --module luigi-tasks Pipeline1 --local-scheduler
echo $?
