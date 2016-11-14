golf_contacts = {
  jim: 'workerBee@example.com',
  samantha: 'golfCartRacer@example.com',
  jane: 'pro_golfer89@example.com',
  mike: 'alwaysAtTheBeach@example.com',
  olivia: 'didYouSeeWhereThatWent@example.com',
  joan: 'bestShortGameEver@example.com'
}

#Invite Samantha, Jane, and Olivia

selection = [golf_contacts[:samantha], golf_contacts[:jane], golf_contacts[:olivia]]

print "To: "
puts selection.join(', ')
