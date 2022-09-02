# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

# --------------------------------------

# RUN THIS ONCE, THEN COMMENT OUT
# puts 'Creating 8 Providers...'

# provider_5 = User.new(
#   email: "patrick@allivu.pro",
#   password: "password",
#   first_name: "Patrick",
#   last_name: "Cailliau",
#   username: "patrickcailliau",
#   location: "Kuta, Bali",
#   provider: true
# )
# provider_6 = User.new(
#   email: "denise@allivu.pro",
#   password: "password",
#   first_name: "Denise",
#   last_name: "Cantor",
#   username: "denisecantor",
#   location: "Denpasar, Bali",
#   provider: true
# )

# provider_7 = User.new(
#   email: "bono@allivu.pro",
#   password: "password",
#   first_name: "Bono",
#   last_name: "Castellar",
#   username: "bonocasapepe",
#   location: "Ubud, Bali",
#   provider: true
# )
# provider_8 = User.new(
#   email: "cole@allivu.pro",
#   password: "password",
#   first_name: "Cole",
#   last_name: "Gendron",
#   username: "colegendron",
#   location: "Seminyak, Bali",
#   provider: true
# )

# provider_9 = User.new(
#   email: "paula@allivu.pro",
#   password: "password",
#   first_name: "Paula",
#   last_name: "Greetham",
#   username: "paulagreetham",
#   location: "Kuta, Bali",
#   provider: true
# )

# provider_10 = User.new(
#   email: "lisa@allivu.pro",
#   password: "password",
#   first_name: "Lisa",
#   last_name: "Luz",
#   username: "lisaluz",
#   location: "Denpasar, Bali",
#   provider: true
# )

# provider_11 = User.new(
#   email: "cristopher@allivu.pro",
#   password: "password",
#   first_name: "Cristopher",
#   last_name: "Nunu",
#   username: "cristophernunu",
#   location: "Ubud, Bali",
#   provider: true
# )
# provider_12 = User.new(
#   email: "andy@allivu.pro",
#   password: "password",
#   first_name: "Andy",
#   last_name: "Ottiger",
#   username: "andyottiger",
#   location: "Seminyak, Bali",
#   provider: true
# )

# provider_5.save!
# provider_6.save!
# provider_7.save!
# provider_8.save!
# provider_9.save!
# provider_10.save!
# provider_11.save!
# provider_12.save!

# puts 'Providers created!'

# ------------------------------------------------------------------------------
puts "Deleting Services database..."
Service.destroy_all

puts 'Creating "Tours" Services!'

snorkel = Service.new(
  name: "Snorkeling at Blue Lagoon",
  category: "Tours",
  description: "In the beginning, we will meet at the meeting point, and get the preparation and we bring the equipment for snorkeling, and after that will jump into the boat and get ready for the Taman jepun beach for the first destination, just about 5 minutes and we arrived at the first destination we will give a little briefing before we jump to the water after we spend about more then 1 hours we will going next to blue lagoon, in here some time we will see a turtle and we can swimming together with the turtle, and after we finish for snorkeling we will heading back to the beach and get the shower and take your lunch, remember in this activity we will bring you free lunch, after that, we will next to visit the hidden gem beach name biastugel beach we Will spend about 1 hours.",
  price: 40,
  location: "Ubud, Bali",
  user: User.find(10)
)

hike = Service.new(
  name: "Sunrise hike",
  category: "Tours",
  description: "Waking up early will be worth the effort when you see the gorgeous sunrise and sights including Mount Agung, the expansive Rinjani Mountains in Lombok, and other mountains visible from the peak of Mount Batur.
  Enjoy breakfast at the peak and capture memories with your camera, while listening to stories of people's lives around Mount Batur told by your local trekking guide.",
  price: 29,
  location: "Kintamani, Bali",
  user: User.find(11)
)

gate = Service.new(
  name: "Gate tour photography",
  category: "Tours",
  description: "We will visit the gate of heaven at lempuyang temple is the ancient temple is one of bali and most highly regarded temple, on par with mother temple(busakih temple). Photos will be taken by me, using a Fuji camera :).",
  price: 32,
  location: "Ubud, Bali",
  user: User.find(12)
)

ricefield = Service.new(
  name: "Rice field walk",
  category: "Tours",
  description: "We will enter into paddy's rice field and watch the amazing terrace view. We lead you & explain you with details how plantation system works, share with you the story of the rice, the irrigation system and the harvesting rice process.
  We will cross a private natural jungle and observe the local farmer collecting the grass for balinese cows.",
  price: 15,
  location: "Canggu, Bali",
  user: User.find(13)
)

ricefield.photos.attach(io: File.open('app/assets/images/seed_img/Rice field walk 1.webp'), filename: 'Rice field walk 1.webp')
ricefield.photos.attach(io: File.open('app/assets/images/seed_img/Rice field walk 2.webp'), filename: 'Rice field walk 2.webp')
ricefield.photos.attach(io: File.open('app/assets/images/seed_img/Rice field walk 3.webp'), filename: 'Rice field walk 3.webp')

gate.photos.attach(io: File.open('app/assets/images/seed_img/Gate tour photography 1.webp'), filename: 'Gate tour photography 1.webp')
gate.photos.attach(io: File.open('app/assets/images/seed_img/Gate tour photography 2.webp'), filename: 'Gate tour photography 2.webp')
gate.photos.attach(io: File.open('app/assets/images/seed_img/Gate tour photography 3.webp'), filename: 'Gate tour photography 3.webp')

snorkel.photos.attach(io: File.open('app/assets/images/seed_img/snorkeling 1.webp'), filename: 'snorkeling 1.webp')
snorkel.photos.attach(io: File.open('app/assets/images/seed_img/snorkeling 2.jpg'), filename: 'snorkeling 2.jpg')
snorkel.photos.attach(io: File.open('app/assets/images/seed_img/snorkeling 3.webp'), filename: 'snorkeling 3.webp')

hike.photos.attach(io: File.open('app/assets/images/seed_img/sunrise hike 1.webp'), filename: 'sunrise hike 1.webp')
hike.photos.attach(io: File.open('app/assets/images/seed_img/sunrise hike 2.webp'), filename: 'sunrise hike 2.webp')
hike.photos.attach(io: File.open('app/assets/images/seed_img/sunrise hike 3.webp'), filename: 'sunrise hike 3.webp')

ricefield.save!
gate.save!
snorkel.save!
hike.save!

puts '"Tours" services Created'

# ------------------------------------------------------------------------------
puts 'Creating "Sports" Services!'

trainer = Service.new(
  name: "Private home trainer",
  category: "Sports",
  description: "My passion is to help people change their lives in the simplest and most realistic way possible. I believe everyone deserves the right to good health and to be happy with themselves inside out. I specialise in mobility and helping you stay strong during your time here!",
  price: 22,
  location: "Kuta, Bali, Indonesia",
  user: User.find(14)
)

futsal = Service.new(
  name: "Indoor futsal",
  category: "Sports",
  description: "Come hang out together with me and my friends! I like to meet new people and introduce one the most popular sports here. Join the fun + fanatical competition for both women and men!",
  price: 8,
  location: "Kerobokan, Bali",
  user: User.find(15)
)

yoga = Service.new(
  name: "Yoga instructor",
  category: "Sports",
  description: "I am a qualified yoga teacher who can provide sessions in your home. Before becoming a yoga teacher, I worked in the hospitality industry for more than 10 years. Together, we will work on easy mobility exercises to promote good form and posture while also breaking sweat! I can coach all levels from beginners to experienced people. I can also teach children too!",
  price: 25,
  location: "Canggu, Bali",
  user: User.find(16)
)

surf = Service.new(
  name: "Surfing lessons",
  category: "Sports",
  description: "Surfboard provided! Beginner lessons usually start with an introduction to basic safety in the water, then we learn standing positions on shore. Once we head into the water I will explain how to get in and out of the ocean safely. Then when we paddle out and find a comfortable position to catch a wave I will help catch the first waves by pushing you in, all you have to do is follow my instructions. I will always give guidance and help you whiles in the water.",
  price: 31,
  location: "Canggu, Bali",
  user: User.find(17)
)

trainer.photos.attach(io: File.open('app/assets/images/seed_img/Private home trainer 1.jpg'), filename: 'Private home trainer 1.jpg')
trainer.photos.attach(io: File.open('app/assets/images/seed_img/Private home trainer 2.jpg'), filename: 'Private home trainer 2.jpg')
trainer.photos.attach(io: File.open('app/assets/images/seed_img/Private home trainer 3.jpg'), filename: 'Private home trainer 3.jpg')

futsal.photos.attach(io: File.open('app/assets/images/seed_img/Indoor futsal 1.jpg'), filename: 'Indoor futsal 1.jpg')
futsal.photos.attach(io: File.open('app/assets/images/seed_img/Indoor futsal 2.jpg'), filename: 'Indoor futsal 2.jpg')

yoga.photos.attach(io: File.open('app/assets/images/seed_img/Yoga instructor 1.jpg'), filename: 'Yoga instructor 1.jpg')
yoga.photos.attach(io: File.open('app/assets/images/seed_img/Yoga instructor 2.png'), filename: 'Yoga instructor 2.png')
yoga.photos.attach(io: File.open('app/assets/images/seed_img/Yoga instructor 3.png'), filename: 'Yoga instructor 3.png')

surf.photos.attach(io: File.open('app/assets/images/seed_img/Surfing lessons 1.webp'), filename: 'Surfing lessons 1.webp')
surf.photos.attach(io: File.open('app/assets/images/seed_img/Surfing lessons 2.webp'), filename: 'Surfing lessons 2.webp')
surf.photos.attach(io: File.open('app/assets/images/seed_img/Surfing lessons 3.webp'), filename: 'Surfing lessons 3.webp')

trainer.save!
futsal.save!
surf.save!
yoga.save!

puts '"Sports" services Created'

# ------------------------------------------------------------------------------
puts 'Creating "Vehicle Rentals" Services!'

avanza = Service.new(
  name: "Toyota Avanza",
  category: "Vehicle Rentals",
  description: "Medium size family car, Power steering, Dual SRS Airbag, Air-conditioning, Electric windows, Child safety door lock, Safety belts, Radio, CD-player, AUX & USB port.",
  price: 30,
  location: "Kerobokan, Bali",
  user: User.find(10)
)

apv = Service.new(
  name: "Suzuki APV",
  category: "Vehicle Rentals",
  description: "Suits for big family or group, Power steering, Dual SRS Airbag, Air-conditioning, Electric windows, Child safety door lock, Safety belts, Radio, CD-player, AUX & USB port.",
  price: 30,
  location: "Denpasar, Bali",
  user: User.find(10)
)

agya = Service.new(
  name: "Toyota Agya",
  category: "Vehicle Rentals",
  description: "Suits for couple or small family, Power steering, Dual SRS Airbag, Air-conditioning, Electric windows, Child safety door lock, Safety belts, Radio, CD-player, AUX & USB port.",
  price: 30,
  location: "Kuta, Bali",
  user: User.find(10)
)

scoopy = Service.new(
  name: "Honda Scoopy",
  category: "Vehicle Rentals",
  description: "Oh look at this pretty thing! The Honda Scoopy is lightweight, automatic and ideal for short distances. To the beach, yoga class or your favourite warung? Pop your phone in the holder on the handlebar and off you go.",
  price: 10,
  location: "Legian, Bali",
  user: User.find(10)
)

pcx = Service.new(
  name: "Honda PCX 160",
  category: "Vehicle Rentals",
  description: "The new (2022) Honda PCX160 lets you stand out both on the road for comfort and ride quality with its all-new premium and elegant design. Experience it's improved performance whilst enjoying its spacious design.",
  price: 15,
  location: "Petitenget, Bali",
  user: User.find(10)
)

nmax = Service.new(
  name: "Yamaha Nmax with Surf-Rack",
  category: "Vehicle Rentals",
  description: "Allows you to bring your surfboard along on your day trips. Be aware that the surf racks add an extra foot to the width of you your motorbike and could get caught on to other vehicles whilst passing by or zipping through traffic.",
  price: 20,
  location: "Kerobokan, Bali",
  user: User.find(10)
)

avanza.photos.attach(io: File.open('app/assets/images/seed_img/avanza1.webp'), filename: 'avanza1.webp')
avanza.photos.attach(io: File.open('app/assets/images/seed_img/avanza2.webp'), filename: 'avanza2.webp')
avanza.photos.attach(io: File.open('app/assets/images/seed_img/avanza3.webp'), filename: 'avanza3.webp')

apv.photos.attach(io: File.open('app/assets/images/seed_img/apv.webp'), filename: 'apv.webp')
agya.photos.attach(io: File.open('app/assets/images/seed_img/agya.webp'), filename: 'agya.webp')
scoopy.photos.attach(io: File.open('app/assets/images/seed_img/scoopy.webp'), filename: 'scoopy.webp')
pcx.photos.attach(io: File.open('app/assets/images/seed_img/pcx.webp'), filename: 'pcx.webp')

nmax.photos.attach(io: File.open('app/assets/images/seed_img/nmax1.webp'), filename: 'nmax1.webp')
nmax.photos.attach(io: File.open('app/assets/images/seed_img/nmax2.jpg'), filename: 'nmax2.jpg')
nmax.photos.attach(io: File.open('app/assets/images/seed_img/nmax3.jpg'), filename: 'nmax3.jpg')

avanza.save!
apv.save!
agya.save!
scoopy.save!
pcx.save!
nmax.save!

puts '"Vehicle Rentals" services Created'

# ------------------------------------------------------------------------------
puts 'Creating "Beauty" Services!'

massage = Service.new(
  name: "Massage at your home",
  category: "Beauty",
  description: "Full body massage. You will receive your passport to bliss. You'll enjoy a five-star divine protocol that includes a silence, sound bath, aromatherapy, foot reflexology massage, and active isolated stretching. I'll make sure you are well traveled and tout our treatment as amongst the best you've ever received. Be ready to be and feel better within an hour.",
  price: 15,
  location: "Canggu, Bali",
  user: User.find(11)
)

skincare = Service.new(
  name: "Traditional skincare making",
  category: "Beauty",
  description: "It will be a warm discussion, engaging class on therapeutic remedies, body care, skin care, hair care such as making body scrub, boreh, hair tonic, face mask, body oil, made out of herbs, leaves and flowers. All skin care ingredients are edible. We will be using ingredients that can be easily found in our kitchen.",
  price: 34,
  location: "Ubud, Bali",
  user: User.find(13)
)

sound = Service.new(
  name: "Sound healing",
  category: "Beauty",
  description: "We will start with general introduction, creating intention for the session and calling spirits-healers. After participants lay down on comfortable mattresses and relax bodies through listening to the guided mediation.",
  price: 51,
  location: "Ubud, Bali",
  user: User.find(12)
)

nailart = Service.new(
  name: "Nail art experience",
  category: "Beauty",
  description: " I will introduce you to my magic world of nails and design. I will propose you 2 hours of special treat for your hands and nails ,and optionally one hour of teaching you how to do yourself your manicure looking amazing by yourself.",
  price: 36,
  location: "Pererenan, Bali",
  user: User.find(14)
)

massage.photos.attach(io: File.open('app/assets/images/seed_img/massage1.webp'), filename: 'massage1.webp')
massage.photos.attach(io: File.open('app/assets/images/seed_img/massage2.webp'), filename: 'massage2.webp')
massage.photos.attach(io: File.open('app/assets/images/seed_img/massage3.webp'), filename: 'massage3.webp')

skincare.photos.attach(io: File.open('app/assets/images/seed_img/skincare1.jpg'), filename: 'skincare1.jpg')
skincare.photos.attach(io: File.open('app/assets/images/seed_img/skincare2.jpg'), filename: 'skincare2.jpg')
skincare.photos.attach(io: File.open('app/assets/images/seed_img/skincare3.jpg'), filename: 'skincare3.jpg')

sound.photos.attach(io: File.open('app/assets/images/seed_img/sound1.webp'), filename: 'sound1.webp')

nailart.photos.attach(io: File.open('app/assets/images/seed_img/nailart1.jpg'), filename: 'nailart1.jpg')
nailart.photos.attach(io: File.open('app/assets/images/seed_img/nailart2.jpg'), filename: 'nailart2.jpg')
nailart.photos.attach(io: File.open('app/assets/images/seed_img/nailart3.jpg'), filename: 'nailart3.jpg')

massage.save!
skincare.save!
sound.save!
nailart.save!

puts '"Beauty" services Created'
# ------------------------------------------------------------------------------

# CATEGORIES = [
#   "Tours",
#   "Sports",
#   "Vehicle Rentals",
#   "Beauty",

#   "Personal Assistant",
#   "Private Classes",
#   "Health",
#   "Souvenirs",
#   "Romantic Services",
#   "Home Entertainment"
# ]

# puts 'Services created!'

# Booking.new(
#   start_date: Date.now,
#   end_date: Date.tomorrow,
#   service: service_test,
#   user:
# )

# Review.new(
#   rating: rand(1..5),
#   service: ,
#   booking:
# )

# UserReview.new(
#   rating: rand(1..5),
#   service: ,
#   booking:
# )

puts "Finished!"
