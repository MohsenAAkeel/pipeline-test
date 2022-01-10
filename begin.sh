#!/bin/sh

export PYTHONPATH="${PYTHONPATH}:$(pwd)"

luigi --module luigi-tasks Pipeline1 --local-scheduler
echo $?

luigi --module luigi-tasks Pipeline3 --local-scheduler
echo $?
