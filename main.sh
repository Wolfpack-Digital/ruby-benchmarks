#!/usr/bin/env bash

chmod 755 shell_scripts/multi_chooser.sh
source shell_scripts/multi_chooser.sh
prompt_for_multiselect result "Image compression; CSV Parser"

list=('Image compression' 'CSV parser')

for i in "${!result[@]}"; do
  echo ${list[$i]}
  if [[ ${result[$i]} == "" ]]; then
    echo 'false'
  else
    echo 'true'
  fi
  echo '-------'
  echo
done

echo 'Welcome to ruby-benchmarks.'
echo

echo 'Your current setup is:'
system_profiler SPSoftwareDataType SPHardwareDataType | grep -E '^\s*Memory: (.*)'
echo $1
echo '---------------'


echo '---------------'
echo 'Running csv parser'
chmod 755 shell_scripts/csv_parser.sh
source shell_scripts/csv_parser.sh

echo '---------------'
echo 'Running image compression'
chmod 755 shell_scripts/image_compression.sh
source shell_scripts/image_compression.sh

echo '---------------'
