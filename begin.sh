#!/bin/sh

python -m luigi --module luigi-tasks Pipeline1 --local-scheduler
echo $?

python -m luigi --module luigi-tasks Pipeline3 --local-scheduler
echo $?
