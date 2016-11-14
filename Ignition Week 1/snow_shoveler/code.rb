width = 8
length = 20
height = 8.0 / 12.0

snow = width * length * height


if snow.round <= 49
  price = 20
elsif snow.round <= 149
  price = 50
elsif snow.round <= 299
  price = 100
else
  price = 150
end

puts "Cubic Feet: #{snow}"
puts "Quote Price: $#{price}"
