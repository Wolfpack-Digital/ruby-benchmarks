#!/usr/bin/env bash

cd ruby/image_processing

bundle install
time ls -R | ruby main.rb

rm output.png
rm Gemfile.lock

cd