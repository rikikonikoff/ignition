puts "How many sides do your dice have?"
sides = gets.chomp.to_i

puts "How many times would you like to roll your pair of dice?"
num = gets.chomp.to_i

num.times do
  die_1 = rand(sides) + 1
  die_2 = rand(sides) + 1
  dice = die_1 + die_2
  puts "You rolled a #{die_1} and a #{die_2}. Total: #{dice}"
end

puts "Roll again? Y/N: "
input = gets.chomp

while input != "N" do
  while input == "Y" do
    num.times do
      die_1 = rand(sides) + 1
      die_2 = rand(sides) + 1
      dice = die_1 + die_2
      puts "You rolled a #{die_1} and a #{die_2}. Total: #{dice}"
    end

    puts "Roll again? Y/N: "
    input = gets.chomp
  end

  while input !="Y" && input !="N" do
    puts "Invalid input. Roll again? Y/N: "
    input = gets.chomp
  end
end

if input == "N"
  exit
end
