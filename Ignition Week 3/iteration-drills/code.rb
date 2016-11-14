# .each to English

# 1. For each number in the array, print 3 times that number, each on a new line.
# 2. Print out the number of letters in each name, each on a new line
# 3. Add up the total of the numbers in an array, then print that total
# 4. Print out each person's name and age in sentence format (name and age are
#    a key-value pair)
# 5. Keeping track of transactions in an account, add up the total value of the
#    account after all the transactions (some of which are probably negative)
# 6. Print each person's name and address in sentence form


# English to .each

# 1. For every element 'word' in the array 'sentences' print out the word.
sentences.each do |word|
  puts word
end

# 2. For every element 'phone_number' in the array 'numbers' print out the phone number if it is a MA area code.
numbers.each do |phone_number|
  if phone_number.starts_with?("339", "351", "413", "508", "617", "774", "781", "857", "978") == true
    puts phone_number
  end
end

# 3. For every element number in the array 'numbers' print out every odd number.
numbers.each do |number|
  if number.odd? == true
    puts number
  end
end

# 4. For every name-age pair in the hash 'ages', print out each pair.
ages.each do |name, age|
  puts "#{name}: #{age}"
end

# 5. For every name-age pair in the hash 'ages', print out a pair if the age is > 10.
ages.each do |name, age|
  if ages[name] > 10
    puts "#{name}: #{age}"
  end
end

# 6. For every name-age pair in the hash 'ages', print out a pair if the age is even.
ages.each do |name, age|
  if ages[name].even? == true
    puts "#{name}: #{age}"
  end
end


array = [28214, 63061, 49928, 98565, 31769, 42316, 23674, 3540, 34953, 70282, 22077, 94710, 50353, 17107, 73683, 33287, 44575, 83602, 33350, 46583]

# Write Ruby code to find out the answers to the following questions:

# * What is the sum of all the numbers in `array`?
sum = 0
array.each do |number|
  sum += number
end
puts sum

# * How would you print out each value of the array?
array.each do |number|
  puts number
end

# * What is the sum of all of the even numbers?
sum = 0
array.each do |number|
  if number.even? == true
    sum += number
  end
end
puts sum

# * What is the sum of all of the odd numbers?
sum = 0
array.each do |number|
  if number.odd? == true
    sum += number
  end
end
puts sum

# * What is the sum of all the numbers divisble by 5?
sum = 0
array.each do |number|
  if number % 5 == 0
    sum += number
  end
end
puts sum

# * What is the sum of the squares of all the numbers in the array?
sum = 0
array.each do |number|
  sum += (number * number)
end
puts sum



array = ["joanie", "annamarie", "muriel", "drew", "reva", "belle", "amari", "aida", "kaylie", "monserrate", "jovan", "elian", "stuart", "maximo", "dennis", "zakary", "louvenia", "lew", "crawford", "caitlyn"]

# Write Ruby code to find out the answers to the following questions:

# * How would you print out each name backwards in `array`?
array.each do |name|
  puts name.reverse
end

# * What are the total number of characters in the names in `array`?
sum = 0
array.each do |name|
  sum += name.length
end
puts sum

# * How many names in `array` are less than 5 characters long?
less_than_5 = 0
array.each do |name|
  if name.length < 5
    less_than_5 += 1
  end
end
puts less_than_5

# * How many names in `array` end in a vowel?
vowel_end = 0
array.each do |name|
  if name.end_with?("a", "e", "i", "o", "u") == true
    vowel_end += 1
  end
end
puts vowel_end

# * How many names in `array` are more than 5 characters long?
more_than_5 = 0
array.each do |name|
  if name.length > 5
    more_than_5 += 1
  end
end
puts more_than_5

# * How many names in `array` are exactly 5 characters in length?
five = 0
array.each do |name|
  if name.length == 5
    five += 1
  end
end
puts five




#The rest of these exercises are optional:



ages = {"Arch"=>89, "Gretchen"=>93, "Simone"=>12, "Daija"=>96, "Alivia"=>22, "Serena"=>28, "Alek"=>3, "Lula"=>24, "Christian"=>62, "Darryl"=>47, "Otha"=>32, "Evalyn"=>44, "Lincoln"=>27, "Rebeca"=>99, "Beatrice"=>99, "Kelton"=>10, "Zachary"=>18, "Aurelie"=>91, "Dell"=>71, "Lisandro"=>22}

# Write Ruby code to find out the answers to the following questions:

# * How would you print out all the names of `ages`?
puts "Names: "
puts ages.keys.join(", ")

# * How would you print out each key-value pair in the format of `<name> is <age> years old.`?
puts "Names and ages: "
ages.each do |name, age|
  puts "#{name} is #{age} years old."
end

# * How would you print out every person with odd numbered age?
puts "Odd-numbered aged people: "
ages.each do |name, age|
  if name.odd? == true
    puts name
  end
end

# * How would you delete everyone under 25 years of age?
ages.each do |name, age|
  if age < 25
    ages.delete(name)
  end
end

# * What is the name and age of everyone with a name greater than or equal to 5 characters?
ages.each do |name, age|
  if name.length >= 5
    puts "#{name} (#{age})"
  end
end


people =
{
  "Alia O'Conner PhD" => {
         "phone" => "538.741.1841",
       "company" => "Leuschke-Stiedemann",
      "children" => [
          "Simone",
          "Cindy",
          "Jess"
      ]
  },
           "Ike Haag" => {
         "phone" => "(661) 663-8352",
       "company" => "Carter Inc",
      "children" => [
          "Joe",
          "Ofelia",
          "Deron"
      ]
  },
       "Brian Heller" => {
         "phone" => "1-288-601-5886",
       "company" => "O'Conner Group",
      "children" => [
          "Renee"
      ]
  },
       "Maryse Johns" => {
         "phone" => "218-571-8774",
       "company" => "Kuhlman Group",
      "children" => [
          "Dominick",
          "Tricia"
      ]
  },
  "Dr. Adela DuBuque" => {
        "phone" => "1-203-483-1226",
      "company" => "Heidenreich, Nietzsche and Dickinson"
  }
}

# Write Ruby code to find out the answers to the following questions:

# * How would you print out all the names of `people`?
# * How would you print out all the names of `people` and which company they work for?
# * What are the names of all the children of everyone in `people`?
# * What are the names of all the companies that people work for?
# * How would you convert all the phone numbers to the same standard (pick one)?


people =
[
    {
          "Derek Wehner" => {
               "phone" => "588-047-7782",
             "company" => "Daniel-Carroll",
            "children" => [
                "Phoebe",
                "Gretchen",
                "Wiley"
            ]
        },
           "Ali Koelpin" => {
               "phone" => "1-127-057-0020",
             "company" => "Rau, Rutherford and Lockman",
            "children" => [
                "Juwan"
            ]
        },
        "Ervin Prohaska" => {
               "phone" => "(393) 630-3354",
             "company" => "Carter Inc",
            "children" => [
                "Virgil",
                "Piper",
                "Josianne"
            ]
        },
          "Hellen Borer" => {
              "phone" => "1-687-825-0947",
            "company" => "Maggio, Ferry and Moen"
        }
    },
    {
        "Elinor Johnson" => {
              "phone" => "819.911.5553",
            "company" => "Pollich Group"
        }
    },
    {
        "Richmond Murray" => {
               "phone" => "1-516-432-2364",
             "company" => "Sporer and Sons",
            "children" => [
                "Kade",
                "Sage"
            ]
        },
            "Nakia Ferry" => {
               "phone" => "134-079-2237",
             "company" => "Hamill, O'Keefe and Lehner",
            "children" => [
                "Rollin"
            ]
        }
    }
]

# Write Ruby code to find out the answers to the following questions:

# * What are the names of everyone in `people`?
# * What are the names of all the children in `people`?
# * How would you create a new hash called `phone_numbers` that has a key of a name and value of a phone number in `people`?
# * How would you create a new hash called `employers` that has a key of a name and a value of a company name in `people`?
# * How would you create a new hash called `children_count` that has a key of a name and a value of the number of children a person has?
