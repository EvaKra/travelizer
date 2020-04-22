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

user = User.new(first_name: "Eva", last_name: "Kramer", description:"I live in London and work as a web developer. I love travelling whenever I can. I hope you like the itinerary!", email: "eva@gmail.com", password: "123456")
user.avatar.attach(io: File.open('app/assets/images/profile_user.jpg'), filename: 'user.jpg', content_type: 'image/jpg')
user.save!

default = User.new(first_name: "Eva", last_name: "Test", description:"I currently work on this website and try to figure out if everything works the way it should :)", email: "default@gmail.com", password: "123456")
default.avatar.attach(io: File.open('app/assets/images/profile_default.jpg'), filename: 'user.jpg', content_type: 'image/jpg')
default.save!

puts "creating new itineraries"

puts "Vietnam and Laos"

file = URI.open("https://images.unsplash.com/photo-1508075679049-7e5dc384e98b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80")
file_1 = URI.open("https://images.unsplash.com/photo-1528127269322-539801943592?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80")
itinerary = Itinerary.new(name: "Vietnam", duration: 20, user_id: default.id)
itinerary.photos.attach(io: file, filename: 'itinerary.png', content_type: 'image/png')
itinerary.photos.attach(io: file_1, filename: 'itinerary.png', content_type: 'image/png')
itinerary.save!

itinerary.destinations.create!(country: "Vietnam", city: "Ho Chi Minh City", date: "28.03.2018", description: "Vietnam's capital races to make up for time lost to the ravages of war and a government that as recently as the 1990s kept the outside world at bay. Its streets surge with scooters vying for right of way amid the din of constantly blaring horns, and all around layers of history reveal periods of French and Chinese occupation – offering a glimpse into the resilience of ambitious, proud Hanoians.")
itinerary.destinations.create!(country: "Vietnam", city: "Nah Trang", date: "31.03.2018", description: "")
itinerary.destinations.create!(country: "Vietnam", city: "Hoi An", date: "03.04.2018", description: "")
itinerary.destinations.create!(country: "Vietnam", city: "Hue Vietnam", date: "06.04.2018", description: "")
itinerary.destinations.create!(country: "Vietnam", city: "Hanoi", date: "08.04.2018", description: "")
itinerary.destinations.create!(country: "Laos", city: "Luang Prabang", date: "12.04.2018", description: "")


puts "Cuba"

file = URI.open("https://images.unsplash.com/photo-1584098181992-e7f35b51f85a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80")
file_1 = URI.open("https://images.unsplash.com/photo-1512843391726-648ce8e9dd6e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80")
itinerary = Itinerary.new(name: "Cuba", duration: 18, summary:"Cuba is like a prince in a poor man’s coat: behind the sometimes shabby facades, gold dust lingers. It’s these rich dichotomies that make travel here the exciting, exhilarating roller-coaster ride it is. Trapped in a time warp and reeling from an economic embargo that has grated for more than half a century, this is a country where you can wave goodbye to everyday assumptions and expect the unexpected.", user_id: default.id)
itinerary.photos.attach(io: file, filename: 'itinerary.png', content_type: 'image/png')
itinerary.photos.attach(io: file_1, filename: 'itinerary.png', content_type: 'image/png')
itinerary.save!

itinerary.destinations.create!(country: "Cuba", city: "Havana", date: "19.04.2019", description: "")
itinerary.destinations.create!(country: "Cuba", city: "Vinales", date: "22.04.2019", description: "")
itinerary.destinations.create!(country: "Cuba", city: "Soroa", date: "26.04.2019", description: "")
itinerary.destinations.create!(country: "Cuba", city: "Cienfuegos", date: "28.04.2019", description: "")
itinerary.destinations.create!(country: "Cuba", city: "Trinidad-Cuba", date: "30.04.2019", description: "")
itinerary.destinations.create!(country: "Cuba", city: "Havana", date: "03.05.2019", description: "")


puts "Lebanon and Jordan"

#file = URI.open("https://images.unsplash.com/photo-1572704956971-74e41e37d1b8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1934&q=80")
#file_1 = URI.open("https://images.unsplash.com/photo-1521327895744-46e309d005b4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80")
itinerary = Itinerary.new(name: "Lebanon and Jordan", duration: 14, summary: "Despite the fact that Lebanon is one of the tiniest countries in the world, it also brags about being one of the most culturally diverse countries on the planet, where dozens of different religions coexist pacifically.
With an ancient and fascinating history, the best nightlife in the Middle East, awesome cuisine and a liberal and westernized social life, sometimes you may forget that you are actually at the heart of the most turbulent region in the world.", user_id: default.id)
itinerary.photos.attach(io: File.open('app/assets/images/Lebanon/Baalbek.JPG'), filename: 'itinerary.jpg', content_type: 'image/jpg')
itinerary.photos.attach(io: File.open('app/assets/images/Lebanon/Beirut_Skyline.JPG'), filename: 'itinerary.jpg', content_type: 'image/jpg')
itinerary.photos.attach(io: File.open('app/assets/images/Lebanon/Byblos.JPG'), filename: 'itinerary.jpg', content_type: 'image/jpg')
#itinerary.photos.attach(io: file_1, filename: 'itinerary.png', content_type: 'image/png')
itinerary.save!

beirut = itinerary.destinations.new(country: "Lebanon", city: "Beirut", date: "20.10.2019", description: "I love Beirut because of its deep, rich and contrasting history, composed of dozens of districts that differ massively from each other: the hipster district of Gemmayzeh, Hezbollah areas like Bourj al-Barajneh, the student neighborhood of Hamra, old Palestinian refugee camps, the Armenian district of Bourj Hammoud, several Christian areas and much, much more!")
beirut.photos.attach(io: File.open('app/assets/images/Lebanon/Beirut_Church_Protest.JPG'), filename: 'itinerary.jpg', content_type: 'image/jpg')
beirut.photos.attach(io: File.open('app/assets/images/Lebanon/Beirut_Martyr_Square.JPG'), filename: 'itinerary.jpg', content_type: 'image/jpg')
beirut.save!


beirut.activities.create!(name: "Walking Tour", cost:20, description:"We did a 4 hour walking tour in Beirut with https://www.alternative-beirut.com/ . The tour started from the top of the St. Nicolas Staircase (NOT the St. Nicolas Church) in Gemmayzeh and was supposed to end at Bab Idriss, next to the old Holiday Inn Hotel. Due to the revolution protests at the time 
we ended the tour at the Martyr Square. We learned a lot about Lebanon's culture and history. I would recommend doing a walking tour as you see so much more.")
pigeon_rocks = beirut.activities.new(name: "The Pigeon Rocks", cost:0, description:"Located in the sea by the historical Raouche, the Pigeon Rocks are a Lebanese natural treasure. In the area surrounding the rocks, evidence of ancient human existence in Lebanon has been found. Walk on Raouche’s Corniche and marvel at these amazing sights.")
pigeon_rocks.photos.attach(io: File.open('app/assets/images/Lebanon/Beirut_Pigeon_Rocks.jpg'), filename: 'itinerary.jpg', content_type: 'image/jpg')
pigeon_rocks.save!

mar_mikael = beirut.activities.new(name: "Mar Mikhael", cost:0, description:"In the liberal north of the city, a new spirit has risen from the rubble that shows signs of Beirut reclaiming its former role as the fun and fashion capital of the Arab world. Centring around the Mar Mikhael district in the north east of the city, the main strip that forms the central artery through the district is packed with stylish bars, cafes, restaurants and independent boutiques.")
mar_mikael.photos.attach(io: File.open('app/assets/images/Lebanon/mar_mikael_art.jpg'), filename: 'itinerary.jpg', content_type: 'image/jpg')
mar_mikael.save!

downtown = beirut.activities.new(name: "Downtown", cost:0, description:"Beirut has been called the “Paris of the Middle East“, and this is clear Downtown. It is modeled after 20th century European cities. This district is home to the Beirut Souks, Martyrs’ Square, a grand Mosque, and posh hotels. Downtown is as glamorous as it is refined, with brands like Chanel, Hermes, and Christian Louboutin gracing its sidewalks. You can also visit the national museum or stumble upon archaeological excavations.
One of the most distinctive things about Downtown is its visual history. In the middle of all the posh stores and restaurants, several buildings reflect Beirut’s history of war. One example is the Dome Cinema, which stands untouched by developers, reflecting an architectural vision that was never realized.")
downtown.photos.attach(io: File.open('app/assets/images/Lebanon/Beirut_Martyr_Square.JPG'), filename: 'itinerary.jpg', content_type: 'image/jpg')
downtown.save!

hamra = beirut.activities.new(name: "Hamra", cost:0, description:"Because of all the historical cafes and theaters, Hamra was once the intellectual center of Beirut. While that has lessened, the district still has a cosmopolitan vibe, and is definitely the place to hang out for people interested in culture. Home to the American University of Beirut, the street is never empty of pedestrians. The atmosphere is a liberal haven in the middle of a country torn by political difference. Hamra is no stranger to sudden street events, and before the civil war was known as Beirut’s “Champs Elysees”. Today, it is full of pubs and coffee shops that welcome people of all sorts, and still stands as a testament to Beirut’s rich cultural history.")
hamra.photos.attach(io: File.open('app/assets/images/Lebanon/Beirut_Skyline.JPG'), filename: 'itinerary.jpg', content_type: 'image/jpg')
hamra.save!



beirut.transports.create!(transport_type: "Uber", start_location:"Beirut", end_location:"Byblos", description:"We took an Uber to get from Beirut to Byblos. Due to the revolution the main motorway was closed off every 5km which made it very much impossible to move fast. The journey from Beirut to Byblos usually takes about 30min. That day it took us 2 hours. However, using an Uber was super easy and also a very cheap option.")

byblos = itinerary.destinations.create!(country: "Lebanon", city: "Byblos", date: "22.10.2019", description: "With 8,000 years of history, Byblos is considered one of the oldest inhabited cities in the world and the place where the first inscriptions containing the modern western alphabet were found. Byblos derives from the Greek word bublos, meaning papyrus, as the town was the stopping place for the Phoenicians who shipped papyrus from Egypt. Besides a super interesting museum that explains the history of the creation of the alphabet, in Byblos you can also visit a crusader castle from the XII century, built by the Franks, a restored souq, a beautiful Mediterranean harbor full of restaurants, where you can eat seafood feasts, and some archeological sites containing mainly Roman ruins but also from many other civilizations, from the Neolithic settlements 8,000 years ago to Phoenician, Egyptian, Greek and Ottoman.")
byblos.activities.create!(name: "", cost:0, description:"")
byblos.activities.create!(name: "", cost:0, description:"")
byblos.transports.create!(transport_type: "Uber", start_location:"Byblos", end_location:"Batroun", description:"")

batroun = itinerary.destinations.create!(country: "Lebanon", city: "Batroun", date: "23.10.2019", description: "I love Beirut because of its deep, rich and contrasting history, composed of dozens of districts that differ massively from each other: the hipster district of Gemmayzeh, Hezbollah areas like Bourj al-Barajneh, the student neighborhood of Hamra, old Palestinian refugee camps, the Armenian district of Bourj Hammoud, several Christian areas and much, much more!")
batroun.activities.create!(name: "", cost:0, description:"")
batroun.activities.create!(name: "", cost:0, description:"")
batroun.transports.create!(transport_type: "Uber", start_location:"Batroun", via_location:"Baloue Balaa Waterfall", end_location:"Batroun", description:"")


bcharre = itinerary.destinations.create!(country: "Lebanon", city: "Bcharre", date: "24.10.2019", description: "I love Beirut because of its deep, rich and contrasting history, composed of dozens of districts that differ massively from each other: the hipster district of Gemmayzeh, Hezbollah areas like Bourj al-Barajneh, the student neighborhood of Hamra, old Palestinian refugee camps, the Armenian district of Bourj Hammoud, several Christian areas and much, much more!")
bcharre.activities.create!(name: "", cost:0, description:"")
bcharre.activities.create!(name: "", cost:0, description:"")
bcharre.transports.create!(transport_type: "Uber", start_location:"Byblos", end_location:"Batroun", description:"")


baalbek = itinerary.destinations.create!(country: "Lebanon", city: "Baalbek", date: "25.10.2019", description: "I love Beirut because of its deep, rich and contrasting history, composed of dozens of districts that differ massively from each other: the hipster district of Gemmayzeh, Hezbollah areas like Bourj al-Barajneh, the student neighborhood of Hamra, old Palestinian refugee camps, the Armenian district of Bourj Hammoud, several Christian areas and much, much more!")
baalbek.activities.create!(name: "", cost:0, description:"")
baalbek.activities.create!(name: "", cost:0, description:"")
baalbek.transports.create!(transport_type: "Uber", start_location:"Bcharre", via_location:"Baalbek", end_location:"Beirut Airport", description:"")
baalbek.transports.create!(transport_type: "Flight", start_location:"Beirut Airport", end_location:"Amman Airport", description:"")

amman = itinerary.destinations.create!(country: "Jordan", city: "Amman", date: "25.10.2019", description: "I love Beirut because of its deep, rich and contrasting history, composed of dozens of districts that differ massively from each other: the hipster district of Gemmayzeh, Hezbollah areas like Bourj al-Barajneh, the student neighborhood of Hamra, old Palestinian refugee camps, the Armenian district of Bourj Hammoud, several Christian areas and much, much more!")
amman.activities.create!(name: "", cost:0, description:"")
amman.activities.create!(name: "", cost:0, description:"")
amman.transports.create!(transport_type: "Taxi", start_location:"Amman", end_location:"Petra", description:"")


petra = itinerary.destinations.create!(country: "Jordan", city: "Petra", date: "28.10.2019", description: "I love Beirut because of its deep, rich and contrasting history, composed of dozens of districts that differ massively from each other: the hipster district of Gemmayzeh, Hezbollah areas like Bourj al-Barajneh, the student neighborhood of Hamra, old Palestinian refugee camps, the Armenian district of Bourj Hammoud, several Christian areas and much, much more!")
petra.activities.create!(name: "", cost:0, description:"")
petra.activities.create!(name: "", cost:0, description:"")
petra.transports.create!(transport_type: "Taxi", start_location:"Petra", end_location:"Wadi Rum", description:"")


wadi_rum = itinerary.destinations.create!(country: "Jordan", city: "Wadi Rum", date: "31.10.2019", description: "I love Beirut because of its deep, rich and contrasting history, composed of dozens of districts that differ massively from each other: the hipster district of Gemmayzeh, Hezbollah areas like Bourj al-Barajneh, the student neighborhood of Hamra, old Palestinian refugee camps, the Armenian district of Bourj Hammoud, several Christian areas and much, much more!")
wadi_rum.activities.create!(name: "", cost:0, description:"")
wadi_rum.activities.create!(name: "", cost:0, description:"")
wadi_rum.transports.create!(transport_type: "Taxi", start_location:"Wadi Rum", end_location:"Dead Sea", description:"")

dead_sea = itinerary.destinations.create!(country: "Jordan", city: "Dead Sea", date: "01.11.2019", description: "I love Beirut because of its deep, rich and contrasting history, composed of dozens of districts that differ massively from each other: the hipster district of Gemmayzeh, Hezbollah areas like Bourj al-Barajneh, the student neighborhood of Hamra, old Palestinian refugee camps, the Armenian district of Bourj Hammoud, several Christian areas and much, much more!")
dead_sea.activities.create!(name: "", cost:0, description:"")
dead_sea.activities.create!(name: "", cost:0, description:"")
dead_sea.transports.create!(transport_type: "Taxi", start_location:"Dead Sea", end_location:"Amman Airport", description:"")

puts "India - Golden Triangle and Kerala"

file = URI.open("https://images.unsplash.com/photo-1548013146-72479768bada?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1055&q=80")
file_1 = URI.open("https://images.unsplash.com/photo-1442570468985-f63ed5de9086?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1093&q=80")
itinerary = Itinerary.new(name: "India", duration: 19, user_id: default.id)
itinerary.photos.attach(io: file, filename: 'itinerary.png', content_type: 'image/png')
itinerary.photos.attach(io: file_1, filename: 'itinerary.png', content_type: 'image/png')
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

