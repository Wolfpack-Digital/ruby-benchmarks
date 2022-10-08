# frozen_string_literal: true

require 'csv'

CSV.parse(File.read(File.join(__dir__, './players_fifa23.csv')), headers: true)
