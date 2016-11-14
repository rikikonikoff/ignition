# set initial number of bottles at 99
bottles = 99

# print the lyrics to "99 bottles of beer"
while bottles > 0 do

  # every 10th line is different so we need to have a version of the verse that
  # prints 9 times, then stops (but will repeat as long as the while loop
  # condition is true)
  9.times do
    puts "#{bottles} bottles of beer on the wall, #{bottles} bottles of beer."
    print "Take one down, pass it around, "
    bottles -= 1

    # when nearing the end of the song, remember proper grammar
    if bottles > 1
      puts "#{bottles} bottles of beer on the wall."
      puts ""
    else
      puts "#{bottles} bottle of beer on the wall."
      puts ""
      puts "#{bottles} bottle of beer on the wall, #{bottles} bottle of beer."
      puts "Take one down, pass it around, no more bottles of beer on the wall."

      # break out of the program when the song is over, even though the loop
      # hasn't finished
      exit
    end

  end

  # print this version every 10th verse
  puts "#{bottles} bottles of beer on the wall, #{bottles} bottles of beer."
  print "Take one down, pass it around, "
  bottles -= 1
  puts "#{bottles} bottles of beer on the wall!"
  puts ""

end
