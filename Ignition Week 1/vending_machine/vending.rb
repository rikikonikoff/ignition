items_we_have = "chips popcorn skittles clif-bar mentos gum cheetos m&ms"

puts "What would you like from the vending machine? "
snack = gets.chomp

location = items_we_have.index(snack)

if location.nil?
  puts "Sorry, we don't have that!"
else
  puts "Item Index:
  #{location}"
end
