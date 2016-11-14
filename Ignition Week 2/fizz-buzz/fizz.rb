n = 1

while n <= 100 do
  if n % 3 == 0 && n % 5 != 0
    puts "Fizz"
  elsif n % 5 == 0 && n % 3 != 0
    puts "Buzz"
  elsif n % 3 == 0 && n % 5 == 0
    puts "Fizzbuzz"
  else
    puts n
  end
  n += 1
end
