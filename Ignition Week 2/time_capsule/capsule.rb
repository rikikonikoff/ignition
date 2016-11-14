print "Hi there! What's your name?\n> "
name = gets.chomp
print "Thanks for visitng The Time Capsule Store, #{name}. "
puts "What would you like to put into your Time Capsule?"

time_capsule = []
numbers = []
item = gets.chomp

while item.downcase != "done" do
  puts "How many of that item would you like to include?"
  number = gets.chomp.to_i
  time_capsule << item
  numbers << number
  puts "Anything else? Type the name of an item or 'DONE' when finished: "
  item = gets.chomp
end

print "Great, #{name}, thanks for creating a Time Capsule. "
puts "Here is a list what's in your Capsule: "

i = 0
while i < time_capsule.length do
  puts " * " + time_capsule[i] + " (#{numbers[i]})"
  i += 1
end
