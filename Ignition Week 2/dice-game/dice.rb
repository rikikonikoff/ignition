die_1 = rand(6) + 1
die_2 = rand(6) + 1
dice = die_1 + die_2

puts "You rolled a #{die_1} and a #{die_2}."
puts "Total: #{dice}"
puts "Press 'Enter' to roll again, 'S' to stop."

input = gets.chomp

while input != "" && input != "S" do
  puts "Invalid input. Press 'Enter' to roll the dice or 'S' to stop."
  input = gets.chomp
end

while input == "" do
  die_1 = rand(6) + 1
  die_2 = rand(6) + 1
  dice = die_1 + die_2

  puts "You rolled a #{die_1} and a #{die_2}."
  puts "Total: #{dice}"
  puts "Press 'Enter' to roll again, 'S' to stop."
  input = gets.chomp
end

if input == "S"
  exit
end
