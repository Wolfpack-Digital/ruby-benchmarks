#!/usr/bin/env bash

cd ruby/image_processing

bundle install
time ls -R | ruby filter.rb

rm -rf processed
rm Gemfile.lock

cd ../..
