#enable cheating for the savvy player
require 'pry'

#choose difficulty level
puts "Welcome to the guessing game! Do you want to play 'easy' or 'hard'?"
difficulty = gets.chomp

#ensure difficulty level is valid
while difficulty != "easy" && difficulty != "hard" do
  puts "Invalid choice. Please choose a difficulty level: 'easy' or 'hard'."
  difficulty = gets.chomp
  if difficulty == "easy" || difficulty == "hard"
    break
  end
end

#pick random number and ask for a guess
if difficulty == "easy"
  num = rand(10) + 1
  puts "I picked a number between 1 and 10. Can you guess it?"
else
  num = rand(20) + 1
  puts "I picked a number between 1 and 20. Can you guess it?"
end

#stop so you can cheat
binding.pry

#get a guess and start guesses counter for scorekeeping
guess = gets.chomp.to_i
guesses = 1

#if the player guessed wrong, ask for another guess and increment counter
while guess != num do
  puts "Nope, try again!"
  guess = gets.chomp.to_i
  guesses += 1
end

#give the player their score
puts "Good job, you got it!"
puts "Your score is: #{guesses}"
