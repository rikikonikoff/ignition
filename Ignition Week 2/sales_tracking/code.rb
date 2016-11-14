puts "Enter your sale values here!"

sum = 0.0

while sum <= 100 do
  print ">"
  sale = gets.chomp.to_f
  sum = sum + sale
end

puts "You made it to $100 in sales!"
