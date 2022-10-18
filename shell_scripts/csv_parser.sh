#!/usr/bin/env bash

echo "==BENCHMARK==" > result.md
{ time ls -R | ruby ruby_scripts/csv_parser/main.rb; } 2>> result.md
cat result.md
