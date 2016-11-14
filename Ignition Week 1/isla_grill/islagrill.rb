dinner_total = 178
tip = 20
multiplier = 0.20

tip_amt = 178 * multiplier
total = dinner_total + tip_amt

puts "Your 20% tip is $#{sprintf'%.2f', tip_amt}.
This brings your total bill to $#{sprintf'%.2f', total}."
