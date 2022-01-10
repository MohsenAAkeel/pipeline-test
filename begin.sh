#!/bin/sh
set -e
PYTHONPATH='.' luigi --module luigi-tasks Pipeline1 --local-scheduler
