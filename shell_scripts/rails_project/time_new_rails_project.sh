#!/usr/bin/env bash

RAILS_VERSION=$(rails -v)

if [[ $RAILS_VERSION == *'Rails is not currently installed on this system'* ]]; then
  echo 'Rails is not currently installed on this directory. Make sure you have rails 7 and the required dependencies installed before running this script'
  exit
fi

chmod 755 shell_scripts/rails_project/rails_project.sh
time ls -R | shell_scripts/rails_project/rails_project.sh
