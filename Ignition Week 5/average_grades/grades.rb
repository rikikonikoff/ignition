Jane = [98,95,88,97,74]
Samantha = [85,93,98,88,49]
Matt = [87,93,89,97,65]

def average(name)
  sum = 0
  name.each do |grade|
    sum += grade
  end

  sum / name.length.to_f
end

def letter_grade(name)
  if average(name) >= 90
    return "A"
  elsif average(name) >= 80
    return "B"
  elsif average(name) >= 70
    return "C"
  elsif average(name) >= 60
    return "D"
  else
    return "F"
  end
end

array = ["Johnny", "Jane", "Sally", "Elizabeth", "Michael"]

def rankings(students)
  students.each_with_index do |student, index|
    puts "#{index + 1}. #{student}"
  end
end

rankings(array)
