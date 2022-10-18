#!/usr/bin/env bash

mkdir rails_projects
cd rails_projects

rails new rails_project -d postgresql --api
cp ../ruby_scripts/rails_project/seeds.rb rails_project/db
cd rails_project

rails db:create
rails g model TestModel description:string
rails db:migrate
bundle install
rails db:seed

rails db:drop

cd ../../
rm -rf rails_projects
