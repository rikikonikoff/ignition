#build vote results
vote_results = []
4.times do |precinct_index|
  vote_results[precinct_index] = []
  3.times do |candidate_index|
    vote_results[precinct_index][candidate_index] = rand(20..500)
  end
end

candidates = [
  'Mary Sue',
  'Sally Jane',
  'Billy Joe'
]

#list out vote results
vote_results.each_with_index do |precinct_results, precinct_index|
  puts "**In precinct #{precinct_index + 1}:**"

  candidates.each_with_index do |candidate, candidate_index|
    puts "* #{candidate} got #{vote_results[precinct_index][candidate_index]} votes"
  end

  puts ""
end


# How many people voted in precinct 1?
total = 0
vote_results[0].each do |votes|
  total += votes.to_i
end

puts "#{total} people voted in Precinct 1."


# Who was the winning candidate in Precinct 4?
most = 0
winner = ""

vote_results[3].each do |votes, index|
  if votes > most
    most = votes
    winner = candidates[index.to_i]
  end
end

puts "#{winner} won Precinct 4."


# How many people voted for Mary Sue?
mary_total = 0

vote_results.each_with_index do |precinct_results, precinct_index|
  candidates.each_with_index do |candidate, candidate_index|
    if candidate_index == 0
      mary_total += vote_results[precinct_index][candidate_index]
    end
  end
end

puts "\n#{mary_total} people voted for Mary Sue."


# How many people voted for Billy Joe?
billy_total = 0

vote_results.each_with_index do |precinct_results, precinct_index|
  candidates.each_with_index do |candidate, candidate_index|
    if candidate_index == 2
      billy_total += vote_results[precinct_index][candidate_index]
    end
  end
end

puts "#{billy_total} people voted for Billy Joe."


# How many people voted for Sally Jane?
sally_total = 0

vote_results.each_with_index do |precinct_results, precinct_index|
  candidates.each_with_index do |candidate, candidate_index|
    if candidate_index == 1
      sally_total += vote_results[precinct_index][candidate_index]
    end
  end
end

puts "#{sally_total} people voted for Sally Jane."


# How many people voted in total?
total = 0

vote_results.each_with_index do |precinct_results, precinct_index|
  candidates.each_with_index do |candidate, candidate_index|
    total += vote_results[precinct_index][candidate_index]
  end
end

puts "\n#{total} people voted in total."


# Who had the most votes?
array = [mary_total, sally_total, billy_total]

candidates.each_with_index do |candidate, candidate_index|
  if array.index(array.max) == candidate_index
    puts "#{candidate} had the most votes."
  end
end
