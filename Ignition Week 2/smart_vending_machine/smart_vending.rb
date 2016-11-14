puts "Hi there, what item would you like?"
item = gets.chomp
puts "How many of those can I get you?"
many = gets.chomp

if many == "tons"
  num = rand(15)
  while num != 0 do
    puts item
    num = rand(15)
  end
  puts "There you go, you're welcome, enjoy!"
elsif many.to_i > 0
  many.to_i.times do
    puts item
  end
  puts "There you go, you're welcome, enjoy!"
else
  puts "I guess you don't want any #{item} after all."
end
