require "mini_magick"

image = MiniMagick::Image.open('./image.jpeg')

image.resize '300x300'
image.format 'png'
image.write 'output.png'

