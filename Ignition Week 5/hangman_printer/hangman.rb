def print_puzzle(word, tries = [])
  word.each_char do |char|
    if tries.include?(char)
      print char
    else
      print "_ "
    end
  end
  puts ""
end

print_puzzle('triangle', ['t', 's', 'g'])
