REQUIRED_BAG_SIZE = 10

available_clubs = [
  :two_iron,
  :three_iron,
  :four_iron,
  :five_iron,
  :six_iron,
  :seven_iron,
  :eight_iron,
  :nine_iron,
  :pitching_wedge,
  :sand_wedge,
  :driver,
  :three_wood,
  :five_wood,
  :seven_wood,
  :putter
]

possible_club_selections = available_clubs.sample(REQUIRED_BAG_SIZE)

puts "*** Automated Golf Club Advice: ***"

possible_club_selections.each do |possible_club_selection|
  puts "Use the #{possible_club_selection.to_s.gsub("_", " ")}!"
end

required_clubs = [:driver, :pitching_wedge, :putter]

i = 0
while i < 3 do
  if !possible_club_selections.include?(required_clubs[i])
    puts "WARNING! You will be without a #{required_clubs[i].to_s.gsub("_", " ")}!"
  end
  i += 1
end
