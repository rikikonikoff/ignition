def disclaimer
  disclaimer_text = "***DISCLAIMER***
This code may not work the way you expect it to.
By using this temperamental program, you agree not to
sue the pants off of its creator.
***"
  puts disclaimer_text
end

disclaimer
puts "Do you accept these terms? Y/N\n>"

response = gets.chomp
while response.downcase != "y"
  puts "You must accept the terms if you wish to proceed! Do you accept?"
  response = gets.chomp
end

puts "3 + 2 = #{rand(6)}"

disclaimer
