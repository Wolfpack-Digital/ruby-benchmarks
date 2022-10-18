#!/usr/bin/env bash

echo 'Welcome to ruby-benchmarks.'
echo

echo '---------------'
echo 'Running csv parser'
chmod 755 shell_scripts/csv_parser.sh
source shell_scripts/csv_parser.sh

echo '---------------'
echo 'Running image compression'
chmod 755 shell_scripts/image_compression.sh
source shell_scripts/image_compression.sh

echo '---------------'
