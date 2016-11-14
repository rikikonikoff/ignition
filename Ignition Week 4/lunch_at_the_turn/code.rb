menu = {
  "hamburger" => 4.0,
  "hotdog" => 3.0,
  "fries" => 2.0,
  "chips" => 1.0,
  "water" => 1.25,
  "soda" => 1.50
}


orders = []
dont_have = 0
total = 0.0

puts "Welcome to The Turn. Here is our menu:"
menu.each do |item, price|
  puts "#{item}: $#{'%.2f' % price}"
end

while total == 0.0 || dont_have == 1
  print "What would you like?\n> "
  input = gets.chomp
  orders = input.gsub(",", " ").split

  orders.each do |order|
    if !menu.key?(order.downcase)
      dont_have = 1
      total = 0.0
      puts "I'm sorry, we don't have #{order}. Please order again."
      break
    end

    total += menu[order]
    dont_have = 0
  end
end

puts "Thank you! Your total is $#{'%.2f' % total}."
