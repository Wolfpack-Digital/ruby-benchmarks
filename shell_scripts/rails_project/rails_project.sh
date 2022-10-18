#!/usr/bin/env bash

mkdir rails_projects
cd rails_projects

rails new rails_project -d postgresql --api
cp ../ruby_scripts/rails_project/seeds.rb rails_project/db
cd rails_project

bundle exec rails db:create
bundle exec rails g model TestModel description:string
bundle exec rails db:migrate
bundle install
bundle exec rails db:seed

bundle exec rails db:drop

cd ../../
rm -rf rails_projects
