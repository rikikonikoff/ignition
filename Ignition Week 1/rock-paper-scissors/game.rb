puts "Hey there! Let's play Rock, Paper, Scissors!"
puts "To choose rock, type r. To choose paper, type p. To choose scissors, type s."
players_choice = gets.chomp

if players_choice == "r"
  players_move = 1
  move = "rock"
elsif players_choice == "p"
  players_move = 2
  move = "paper"
elsif players_choice == "s"
  players_move = 3
  move = "scissors"
else
  move = nil
end


if move == nil
  puts "That's not a valid move!"
  exit
else
  puts "You chose " + move + "."
end


computer_choice = rand(3) + 1

if computer_choice == 1
  computer_move = "rock"
elsif computer_choice == 2
  computer_move = "paper"
else
  computer_move = "scissors"
end

puts "Computer chose " + computer_move + "."



if computer_choice == players_move
  puts "You tie! Good game."
elsif computer_choice == 2 && players_move == 1
  puts "Computer wins; " + computer_move + " beats " + move + "! Sorry!"
elsif computer_choice == 3 && players_move == 2
  puts "Computer wins; " + computer_move + " beats " + move + "! Sorry!"
elsif computer_choice == 1 && players_move == 3
  puts "Computer wins; " + computer_move + " beats " + move + "! Sorry!"
else
  puts "You win; " + move + " beats " + computer_move + "! Good job!"
end
