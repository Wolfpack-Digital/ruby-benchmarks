#!/usr/bin/env bash

chmod 755 shell_scripts/multi_chooser.sh
source shell_scripts/multi_chooser.sh

declare -a options_list=("csv_parser" "none")
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

function join { local IFS="$1"; shift; echo "$*"; }
input_options=$(join ";" ${options_list[@]})

prompt_for_multiselect result ${input_options}

for i in ${!options_list[@]}; do
  if [[ ${options_list[$i]} == "csv_parser" ]] && [[ ${result[$i]} == true ]]; then
    echo '---------------'
    echo 'Running csv parser'
    chmod 755 shell_scripts/csv_parser.sh
    source shell_scripts/csv_parser.sh
  elif [[ ${options_list[$i]} == "none" ]] && [[ ${result[$i]} == true ]]; then
    echo '---------------'
    echo 'Thanks for stopping by! See you next time.'
  fi
done

