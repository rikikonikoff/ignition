#Part 1

knife1 = 2.10
knife2 = 0.77
knife3 = 5.00
knife4 = 1.00
knife5 = 3.00

torch1 = 6.00
torch2 = 3.50
torch3 = 7.00

hand1 = 2.00
hand2 = 1.00

block1 = 0.75
block2 = 0.43

knifetotal = knife1 + knife2 + knife3 + knife4 + knife5
torchtotal = torch1 + torch2 + torch3
handtotal = hand1 + hand2
blocktotal = block1 + block2

puts "Knife Juggling:
$#{sprintf('%.2f', knifetotal)}
Torch Juggling:
$#{sprintf('%.2f', torchtotal)}
Hand Balancing:
$#{sprintf('%.2f', handtotal)}
Human Blockhead:
$#{sprintf('%.2f', blocktotal)}"

total = knifetotal + torchtotal + handtotal + blocktotal
puts "Total:
$#{sprintf('%.2f', total)}"

average = total / 12
puts "Average Tip Value:
$#{sprintf('%.4f', average)}"


#Part2

puts "\n\nHello everyone! Who's ready for a show? We're going to keep you on your
toes today! Can I have a brave volunteer from the audience? Yes, you there!
Come on up here, what's your name?"
name = gets.chomp
puts "Hello #{name}! Let's all give #{name} a big round of applause! Thank you!
Alright, now, #{name}, what's your favorite number?"
number = gets.chomp
puts "Ah! Good. Now, #{name}, my assistant and I are going to juggle these knives
around you and over your head for #{number} seconds, are you ready? Here we go!"
