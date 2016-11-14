train_times = [2.0, 5.0, 7.5, 8.5, 9.0, 10.0, 11.5, 13.5, 14.5, 17.0, 18.0, 19.0, 24.0]

print "Hey there commuter! What time do you want to leave?\n> "
leave = gets.chomp.to_f

while leave == 0 do
  print "I'm sorry, I didn't get that. Please type in a time. "
  puts "I understand a 24-hour clock in decimal format (i.e. 13.25 for 1:15pm)."
  puts "What time do you want to leave?"
  leave = gets.chomp.to_f
end

after = train_times.select { |n| n > leave }
next_train = after[0]
train_num = train_times.index(next_train) + 1

puts "You should catch Train #{train_num}, which leaves at #{next_train}"

if train_num == 13
  puts "\n  Just a small town girl
  Living in a lonely world
  She took the midnight train going anywhere\n
  Just a city boy
  Born and raised in South Detroit
  He took the midnight train going anywhere\n
  A singer in a smoky room
  The smell of wine and cheap perfume
  For a smile they can share the night
  It goes on and on and on and on...\n
  Strangers waiting up and down the boulevard
  Their shadows searching in the night\n
  Streetlights, people
  Living just to find emotion
  Hiding somewhere in the night\n
  Don't stop believing
  Hold on to that feeling
  Streetlights, people\n
  Don't stop believing
  Hold on to that feeling
  Streetlights, people\n
  Don't stop!"
end
