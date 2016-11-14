puts "Type your name: "
name = gets.chomp

puts "Hi, #{name}! Welcome to the park! How many adults in your group? "
adults = gets.chomp

puts "Great! And how many children? "
children = gets.chomp

puts "Thanks, #{name}. Here are your #{adults} adult tickets and #{children} child tickets! Enjoy!"



puts "\n\nOh, you want some menu pricing info? Sure!\n"

hot_dog = 1.27
hamburger = 4.17
funnel_cake = 3.79
ice_cream_sandwich = 0.75


order1 = (2 * hamburger) + (2 * ice_cream_sandwich)
puts "2 hamburgers and 2 ice cream sandwiches will cost $#{sprintf('%.2f', order1)}."

order2 = (8 * funnel_cake) + hot_dog
puts "8 funnel cakes and 1 hot dog will cost you $#{sprintf('%.2f', order2)}."

order3 = 3 * (hot_dog + hamburger + funnel_cake + ice_cream_sandwich)
puts "3 of each item comes to a total of $#{sprintf('%.2f', order3)}."
