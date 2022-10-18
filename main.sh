#!/usr/bin/env bash

chmod 755 shell_scripts/multi_chooser.sh
source shell_scripts/multi_chooser.sh

prompt_for_multiselect result "csv parser;none"

if  [[ $result == true ]]; then
  echo '---------------'
  echo 'Running csv parser'
  chmod 755 shell_scripts/csv_parser.sh
  source shell_scripts/csv_parser.sh
else
  echo '---------------'
  echo 'Thanks for stopping by! See you next time.'
fi
