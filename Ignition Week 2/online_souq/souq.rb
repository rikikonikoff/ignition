puts "Welcome to my cart at the Souq! What's your name?"
name = gets.chomp
puts "Hi, #{name}, nice to meet you!"

items = ["old paperback book", "potato", "red onion", "dried lemon",
  "frankincense", "medicinal herbs", "saffron", "glass spice jar", "red fabric",
  "orange fabric", "handicrafts", "small Persian rug", "medium Persian rug",
  "large Persian rug", "extra large Persian rug"]

puts "Here is a list of my inventory:"

items.each do |item|
  print " * "
  puts item
end

puts "What can I get you today?"
want = gets.chomp.downcase

souq_cart = Array.new
not_here = Array.new

while want != "no" do

  while items.include?(want) == false do
    not_here.push(want)
    puts "Sorry, I don't have that item here. Can I get you something else?"
    want = gets.chomp.downcase
  end

  while items.include?(want) == true do
    souq_cart.push(want)
    print "Great! I've added #{want} to your cart. Anything else? Type the name "
    puts "of an item or 'no' when finished."
    want = gets.chomp.downcase
  end

end

if want == "no"
  puts "Ok, #{name}, thanks for visiting the online Souq."
  puts "Here is a list of the items in your cart:"
  souq_cart.each do |item|
    print " * "
    puts item
  end

  print "By the way, I noticed you wanted the following things that we don't "
  puts "have in stock just yet. We'll let you know if we get them in!"
  not_here.each do |item|
    print " * "
    puts item
  end
end
