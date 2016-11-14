voter_info = {
  "ages" => [25, 30, 32, 35, 38, 48, 45, 24, 45, 52],
  "incomes" => [50000, 60000, 80000, 65000, 63000, 78000, 75000, 45000, 75000, 100000],
  "household sizes" => [1, 3, 2, 4, 3, 5, 2, 1, 1, 2],
  "genders" => {"Male" => 6, "Female" => 3, "Unspecified" => 1},
  "educations" => {"College" => 7, "High School" => 2, "No High School Degree" => 1}
}


total_age = 0.0
voter_info["ages"].each do |age|
  total_age += age
end
average_age = (total_age / voter_info["ages"].length)

total_income = 0
voter_info["incomes"].each do |income|
  total_income += income
end
average_income = (total_income / voter_info["incomes"].length)

total_size = 0.0
voter_info["household sizes"].each do |size|
  total_size += size
end
average_size = (total_size / voter_info["household sizes"].length)

female_p = voter_info["genders"]["Female"].to_f / 10.0 * 100
male_p = voter_info["genders"]["Male"].to_f / 10.0 * 100
unspec_p = voter_info["genders"]["Unspecified"].to_f / 10.0 * 100

college_p = voter_info["educations"]["College"].to_f / 10.0 * 100
high_p = voter_info["educations"]["High School"].to_f / 10.0 * 100
nohigh_p = voter_info["educations"]["No High School Degree"].to_f / 10.0 * 100


puts "Average Age: #{average_age}"
puts "Average Income: $#{average_income}"
puts "Average Household Size: #{average_size}"
puts "Female Voters: #{female_p}%"
puts "Male Voters: #{male_p}%"
puts "Voters of Unspecified Gender: #{unspec_p}%"
puts "College Educated Voters: #{college_p}%"
puts "High School Educated Voters: #{high_p}%"
puts "Voters with no High School Diploma: #{nohigh_p}%"
