10000.times do |i|
  TestModel.create!(description: "test model #{i+1}")
end
