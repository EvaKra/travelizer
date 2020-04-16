# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

puts "deleting old data"
Itinerary.destroy_all
Destination.destroy_all
User.destroy_all
puts "creating new users"
user = User.create(email: "eva@gmail.com", password: "123456")
default = User.create(email: "default@gmail.com", password: "123456")

puts "creating new itineraries"

puts "Vietnam and Laos"

file = URI.open("https://images.unsplash.com/photo-1508075679049-7e5dc384e98b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80")
itinerary = Itinerary.new(name: "Vietnam", duration: 20, user_id: default.id)
itinerary.photos.attach(io: file, filename: 'itinerary.png', content_type: 'image/png')
itinerary.save!

itinerary.destinations.create!(country: "Vietnam", city: "Ho Chi Minh City", date: "28.03.2018", description: "Vietnam's capital races to make up for time lost to the ravages of war and a government that as recently as the 1990s kept the outside world at bay. Its streets surge with scooters vying for right of way amid the din of constantly blaring horns, and all around layers of history reveal periods of French and Chinese occupation – offering a glimpse into the resilience of ambitious, proud Hanoians.")
itinerary.destinations.create!(country: "Vietnam", city: "Nah Trang", date: "31.03.2018", description: "")
itinerary.destinations.create!(country: "Vietnam", city: "Hoi An", date: "03.04.2018", description: "")
itinerary.destinations.create!(country: "Vietnam", city: "Hue Vietnam", date: "06.04.2018", description: "")
itinerary.destinations.create!(country: "Vietnam", city: "Hanoi", date: "08.04.2018", description: "")
itinerary.destinations.create!(country: "Laos", city: "Luang Prabang", date: "12.04.2018", description: "")


puts "Cuba"

file = URI.open("https://images.unsplash.com/photo-1584098181992-e7f35b51f85a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80")
itinerary = Itinerary.new(name: "Cuba", duration: 18, user_id: default.id)
itinerary.photos.attach(io: file, filename: 'itinerary.png', content_type: 'image/png')
itinerary.save!

itinerary.destinations.create!(country: "Cuba", city: "Havana", date: "19.04.2019", description: "")
itinerary.destinations.create!(country: "Cuba", city: "Vinales", date: "22.04.2019", description: "")
itinerary.destinations.create!(country: "Cuba", city: "Soroa", date: "26.04.2019", description: "")
itinerary.destinations.create!(country: "Cuba", city: "Cienfuegos", date: "28.04.2019", description: "")
itinerary.destinations.create!(country: "Cuba", city: "Trinidad-Cuba", date: "30.04.2019", description: "")
itinerary.destinations.create!(country: "Cuba", city: "Havana", date: "03.05.2019", description: "")


puts "Lebanon and Jordan"

file = URI.open("https://images.unsplash.com/photo-1572704956971-74e41e37d1b8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1934&q=80")
itinerary = Itinerary.new(name: "Lebanon and Jordan", duration: 14, user_id: default.id)
itinerary.photos.attach(io: file, filename: 'itinerary.png', content_type: 'image/png')
itinerary.save!

itinerary.destinations.create!(country: "Lebanon", city: "Beirut", date: "20.10.2019", description: "I love Beirut because of its deep, rich and contrasting history, composed of dozens of districts that differ massively from each other: the hipster district of Gemmayzeh, Hezbollah areas like Bourj al-Barajneh, the student neighborhood of Hamra, old Palestinian refugee camps, the Armenian district of Bourj Hammoud, several Christian areas and much, much more!")
itinerary.destinations.create!(country: "Lebanon", city: "Byblos", date: "22.10.2019", description: "With 8,000 years of history, Byblos is considered one of the oldest inhabited cities in the world and the place where the first inscriptions containing the modern western alphabet were found. Byblos derives from the Greek word bublos, meaning papyrus, as the town was the stopping place for the Phoenicians who shipped papyrus from Egypt. Besides a super interesting museum that explains the history of the creation of the alphabet, in Byblos you can also visit a crusader castle from the XII century, built by the Franks, a restored souq, a beautiful Mediterranean harbor full of restaurants, where you can eat seafood feasts, and some archeological sites containing mainly Roman ruins but also from many other civilizations, from the Neolithic settlements 8,000 years ago to Phoenician, Egyptian, Greek and Ottoman.")
itinerary.destinations.create!(country: "Lebanon", city: "Batroun", date: "23.10.2019", description: "I love Beirut because of its deep, rich and contrasting history, composed of dozens of districts that differ massively from each other: the hipster district of Gemmayzeh, Hezbollah areas like Bourj al-Barajneh, the student neighborhood of Hamra, old Palestinian refugee camps, the Armenian district of Bourj Hammoud, several Christian areas and much, much more!")
itinerary.destinations.create!(country: "Lebanon", city: "Bcharre", date: "24.10.2019", description: "I love Beirut because of its deep, rich and contrasting history, composed of dozens of districts that differ massively from each other: the hipster district of Gemmayzeh, Hezbollah areas like Bourj al-Barajneh, the student neighborhood of Hamra, old Palestinian refugee camps, the Armenian district of Bourj Hammoud, several Christian areas and much, much more!")
itinerary.destinations.create!(country: "Lebanon", city: "Baalbek", date: "25.10.2019", description: "I love Beirut because of its deep, rich and contrasting history, composed of dozens of districts that differ massively from each other: the hipster district of Gemmayzeh, Hezbollah areas like Bourj al-Barajneh, the student neighborhood of Hamra, old Palestinian refugee camps, the Armenian district of Bourj Hammoud, several Christian areas and much, much more!")
itinerary.destinations.create!(country: "Jordan", city: "Amman", date: "25.10.2019", description: "I love Beirut because of its deep, rich and contrasting history, composed of dozens of districts that differ massively from each other: the hipster district of Gemmayzeh, Hezbollah areas like Bourj al-Barajneh, the student neighborhood of Hamra, old Palestinian refugee camps, the Armenian district of Bourj Hammoud, several Christian areas and much, much more!")
itinerary.destinations.create!(country: "Jordan", city: "Petra", date: "28.10.2019", description: "I love Beirut because of its deep, rich and contrasting history, composed of dozens of districts that differ massively from each other: the hipster district of Gemmayzeh, Hezbollah areas like Bourj al-Barajneh, the student neighborhood of Hamra, old Palestinian refugee camps, the Armenian district of Bourj Hammoud, several Christian areas and much, much more!")
itinerary.destinations.create!(country: "Jordan", city: "Wadi Rum", date: "31.10.2019", description: "I love Beirut because of its deep, rich and contrasting history, composed of dozens of districts that differ massively from each other: the hipster district of Gemmayzeh, Hezbollah areas like Bourj al-Barajneh, the student neighborhood of Hamra, old Palestinian refugee camps, the Armenian district of Bourj Hammoud, several Christian areas and much, much more!")
itinerary.destinations.create!(country: "Jordan", city: "Dead Sea", date: "01.11.2019", description: "I love Beirut because of its deep, rich and contrasting history, composed of dozens of districts that differ massively from each other: the hipster district of Gemmayzeh, Hezbollah areas like Bourj al-Barajneh, the student neighborhood of Hamra, old Palestinian refugee camps, the Armenian district of Bourj Hammoud, several Christian areas and much, much more!")

puts "India - Golden Triangle and Kerala"

file = URI.open("https://images.unsplash.com/photo-1548013146-72479768bada?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1055&q=80")
itinerary = Itinerary.new(name: "India", duration: 19, user_id: default.id)
itinerary.photos.attach(io: file, filename: 'itinerary.png', content_type: 'image/png')
itinerary.save!

itinerary.destinations.create!(country: "India", city: "Delhi", date: "12.04.2017", description: "")
itinerary.destinations.create!(country: "India", city: "Agra", date: "15.04.2017", description: "")
itinerary.destinations.create!(country: "India", city: "Jaipur", date: "16.04.2017", description: "")
itinerary.destinations.create!(country: "India", city: "Udaipur", date: "19.04.2017", description: "")
itinerary.destinations.create!(country: "India", city: "Kochin", date: "22.04.2017", description: "")
itinerary.destinations.create!(country: "India", city: "Backwaters", date: "24.04.2017", description: "")
itinerary.destinations.create!(country: "India", city: "Munnar", date: "25.04.2017", description: "")
itinerary.destinations.create!(country: "India", city: "Varkala", date: "27.04.2017", description: "")
itinerary.destinations.create!(country: "India", city: "Trivandrum", date: "29.05.2017", description: "")

puts "all done"

