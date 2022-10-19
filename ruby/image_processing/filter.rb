require 'mini_magick'
require 'parallel'

all_images = (1..10).map do |nr|
  MiniMagick::Image.open('./f1.jpeg')
end

Dir.mkdir('processed') unless File.exists?('processed')

Parallel.each_with_index(all_images, in_threads: 8) do |image, index|
  image.combine_options do |b|
    b.rotate(180)
    b.flip
    b.rotate(-90)
    b.colorspace 'Gray'
    b.negate
    b.rotate(90)
    b.antialias.+
    b.distort.+("Perspective", "0,0,4,5 89,0,45,46")
  end

  image.write("processed/filtered_#{index}.jpg")
end
