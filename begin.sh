#!/bin/sh
|
set -e
PYTHONPATH='.' luigi --module luigi-tasks Pipeline3 --local-scheduler
