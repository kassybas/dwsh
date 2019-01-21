#!/usr/bin/env bash
set -e

# Wrap script in docker: git.io/fhgmX
if dwsh is-installed > /dev/null; then
  dwsh "python:2-slim" ; exit $?
fi

MY_LITTLE_TIME=$(python2 -c "import datetime; print(datetime.datetime.now())")

echo "Hey Bus ${MY_LITTLE_TIME}"
ls -la
