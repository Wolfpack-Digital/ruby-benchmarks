# frozen_string_literal: true

10000.times do |i|
  TestModel.create!(description: "test model #{i+1}")
end
