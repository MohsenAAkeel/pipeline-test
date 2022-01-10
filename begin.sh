#!/bin/sh
set -e
export PYTHONPATH='.' 
luigi --module luigi-tasks Pipeline3 --local-scheduler
