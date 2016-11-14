transactions = [50_000, -2_000, -25_000, 4_000, -12_000, 5_000, -800, -900, 43_000, -30_000, 15_000, 62_000, -50_000, 42_000]

# Write Ruby code to find out the answers to the following questions:

# * What is the value of the first transaction?
print "First transaction: "
puts transactions.first

# * What is the value of the second transaction?
print "Second transaction: "
puts transactions[1]

# * What is the value of the fourth transaction?
print "Fourth transaction: "
puts transactions[3]

# * What is the value of the last transaction?
print "Last transaction: "
puts transactions.last

# * What is the value of the second from last transaction?
print "Second-to-last transaction: "
puts transactions[-2]

# * What is the value of the 5th from last transaction?
print "5th-from-last transactinon: "
puts transactions[-5]

# * What is the value of the transaction with index 5?
print "Transaction at index 5: "
puts transactions[5]

# * How many transactions are there in total?
print "Total number of transactions: "
puts transactions.length

# * How many positive transactions are there in total?
total = 0
transactions.each do |transaction|
  if transaction > 0
    total += 1
  end
end
puts "There are #{total} positive transactions."

# * How many negative transactions are there in total?
total = 0
transactions.each do |transaction|
  if transaction < 0
    total += 1
  end
end
puts "There are #{total} negative transactions."

# * What is the largest withdrawal?
print "Largest withdrawal: $"
puts transactions.min.abs

# * What is the largest deposit?
print "Largest deposit: $"
puts transactions.max

# * What is the small withdrawal?
neg = []
transactions.each do |transaction|
  if transaction < 0
    neg << transaction
  end
end
puts "The smallest withdrawal was $#{neg.max.abs}."

# * What is the smallest deposit?
pos = []
transactions.each do |transaction|
  if transaction > 0
    pos << transaction
  end
end
puts "The smallest deposit was $#{pos.min}."

# * What is the total value of all the transactions?
total = 0
transactions.each do |transaction|
  total += transaction
end
puts "The total value of all transactions is $#{total}."

# * If Dr. Dre's initial balance was $239,900 in this account, what is the value of his balance after his last transaction?
balance = 239_900
transactions.each do |transaction|
  balance += transaction
end
puts "If Dr. Dre started with $239900 in the account, his balance after all transactions would be $#{balance}."



best_records = {
 "Tupac"=>"All Eyez on Me",
 "Eminem"=>"The Marshall Mathers LP",
 "Wu-Tang Clan"=>"Enter the Wu-Tang (36 Chambers)",
 "Led Zeppelin"=>"Physical Graffiti",
 "Metallica"=>"The Black Album",
 "Pink Floyd"=>"The Dark Side of the Moon",
 "Pearl Jam"=>"Ten",
 "Nirvana"=>"Nevermind"
 }

# Write Ruby code to find out the answers to the following questions:

# * How many records are in `best_records`?
print "\n\nNumber of records in the hash: "
puts best_records.length

# * Who are all the artists listed?
print "\nArtists: "
puts best_records.keys.join(", ")

# * What are all the album names in the hash?
print "\nAlbums: "
puts best_records.values.join(", ")

# * Delete the `Eminem` key-value pair from the list.
best_records.delete("Eminem")
puts "\nUpdated list of artists after deleting Eminem: "
puts best_records.keys.join(", ")

# * Add your favorite musician and their best album to the list.
best_records["Sara Bareilles"] = "Kaleidescope Heart"
puts "\nUpdated list of artists after adding my favorite: "
puts best_records.keys.join(", ")

# * Change `Nirvana`'s album to another.
best_records["Nirvana"] = "In Utero"
puts "\nUpdated list of albums after changing Nirvana's album: "
puts best_records.values.join(", ")

# * Is `Nirvana` included in `best_records`?
print "\nNirvana is on the list (T/F): "
puts best_records.include?("Nirvana")

# * Is `Soundgarden` included in `best_records`?
print "Soundgarden is on the list (T/F): "
puts best_records.key?("Soundgarden")

# * If `Soundgarden` is not in `best_records` then add a key-value pair for the band.
if best_records.key?("Soundgarden") == false
  best_records["Soundgarden"] = "Spoonman"
end
puts "\nUpdated list of artists after adding Soundgarden: "
puts best_records.keys.join(", ")

# * Which key-value pairs have a key that has a length less than or equal to 6 characters?
puts "\nThese albums have short artist names: "
best_records.each do |band, record|
  if band.length <= 6
    puts "#{band}: #{record}"
  end
end

# * Which key-value pairs have a value that is greater than 10 characters?
puts "\nThese albums have long names: "
best_records.each do |band, record|
  if record.length > 10
    puts "#{band}: #{record}"
  end
end
