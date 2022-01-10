#!/bin/sh
set -e
export PYTHONPATH='.' 
luigi --module luigi-tasks Pipeline1 --local-scheduler
echo $?
