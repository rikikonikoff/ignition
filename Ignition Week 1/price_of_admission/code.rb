adultprice = 12.80
childprice = 4.00

adults = 4
children = 2

adultcost = adultprice * adults
childcost = childprice * children

total = adultcost + childcost

split = total / adults


puts "The total cost for your group is $#{sprintf('%.2f', total)};
if splitting the cost evenly, each adult should pay $#{sprintf('%.2f', split)}."
