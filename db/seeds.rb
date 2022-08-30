# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

# 3-4 categories
# 10-15 services per category
# 4 users (group members) + provider accounts
puts "Deleting User database..."
Review.destroy_all
UserReview.destroy_all
Booking.destroy_all
Service.destroy_all
User.destroy_all

puts 'Creating 4 Users...'

tanto = User.new(
  email: "tanto@allivu.pro",
  password: "password",
  first_name: "Tanto",
  last_name: "van Wagon",
  username: "tanto.san",
  location: "",
  provider: false
)

remi = User.new(
  email: "remi@allivu.pro",
  password: "password",
  first_name: "Remi",
  last_name: "Wagon",
  username: "remi.san",
  location: "",
  provider: false
)

naz = User.new(
  email: "naz@allivu.pro",
  password: "password",
  first_name: "Naz",
  last_name: "Wagon",
  username: "naz_nona",
  location: "",
  provider: false
)

ines = User.new(
  email: "ines@allivu.pro",
  password: "password",
  first_name: "Ines",
  last_name: "Wagon",
  username: "ines.san",
  location: "",
  provider: false
)

tanto.save!
naz.save!
remi.save!
ines.save!

puts 'Users created!'

# ------------------------------------------------------------------------------

puts 'Creating 4 Providers...'

provider_1 = User.new(
  email: "provider1@allivu.pro",
  password: "password",
  first_name: "Franck",
  last_name: "Appleseed",
  username: "franckappleseed",
  location: "",
  provider: true
)
provider_2 = User.new(
  email: "provider2@allivu.pro",
  password: "password",
  first_name: "big",
  last_name: "boy",
  username: "bigboy",
  location: "",
  provider: true
)

provider_3 = User.new(
  email: "provider3@allivu.pro",
  password: "password",
  first_name: "lama",
  last_name: "isgone",
  username: "lamaisgon",
  location: "",
  provider: true
)
provider_4 = User.new(
  email: "provider4@allivu.pro",
  password: "password",
  first_name: "today",
  last_name: "imhappy",
  username: "todayimhappy",
  location: "",
  provider: true
)

provider_1.save!
provider_2.save!
provider_3.save!
provider_4.save!

puts 'Providers created!'

# 3-4 categories ["Food & Drinks", "Healthcare", "Personal Services", "Rentals", "Trips", "Practical Matters"]

# 10-15 services per category
# ------------------------------------------------------------------------------
# CATEGORY 1: Trips
puts 'Creating Services!'


diving = Service.new(
  name: "diving",
  category: "Trips",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce nec pellentesque elit. Maecenas sodales volutpat lacus. Nunc commodo enim id turpis posuere, ut ultrices libero mattis. Duis vitae gravida dui. In sodales pretium est ut vestibulum. Curabitur nisi orci, sagittis in arcu vel, mattis maximus dui. Integer enim erat, pellentesque ut faucibus eu, dignissim eu libero. Nam pretium sapien ipsum, ut congue orci fermentum nec. Maecenas consequat eu urna et malesuada. Interdum et malesuada fames ac ante ipsum primis in faucibus.",
  price: rand(10..99),
  location: "Bali",
  user: provider_1
)

climbing = Service.new(
  name: "climbing",
  category: "Trips",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce nec pellentesque elit. Maecenas sodales volutpat lacus. Nunc commodo enim id turpis posuere, ut ultrices libero mattis. Duis vitae gravida dui. In sodales pretium est ut vestibulum. Curabitur nisi orci, sagittis in arcu vel, mattis maximus dui. Integer enim erat, pellentesque ut faucibus eu, dignissim eu libero. Nam pretium sapien ipsum, ut congue orci fermentum nec. Maecenas consequat eu urna et malesuada. Interdum et malesuada fames ac ante ipsum primis in faucibus.",
  price: rand(10..99),
  location: "switzerland",
  user: provider_2
)

sky = Service.new(
  name: "sky dyving",
  category: "Trips",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce nec pellentesque elit. Maecenas sodales volutpat lacus. Nunc commodo enim id turpis posuere, ut ultrices libero mattis. Duis vitae gravida dui. In sodales pretium est ut vestibulum. Curabitur nisi orci, sagittis in arcu vel, mattis maximus dui. Integer enim erat, pellentesque ut faucibus eu, dignissim eu libero. Nam pretium sapien ipsum, ut congue orci fermentum nec. Maecenas consequat eu urna et malesuada. Interdum et malesuada fames ac ante ipsum primis in faucibus.",
  price: rand(10..99),
  location: "Bali",
  user: provider_3
)

skiying = Service.new(
  name: "skiying",
  category: "Trips",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce nec pellentesque elit. Maecenas sodales volutpat lacus. Nunc commodo enim id turpis posuere, ut ultrices libero mattis. Duis vitae gravida dui. In sodales pretium est ut vestibulum. Curabitur nisi orci, sagittis in arcu vel, mattis maximus dui. Integer enim erat, pellentesque ut faucibus eu, dignissim eu libero. Nam pretium sapien ipsum, ut congue orci fermentum nec. Maecenas consequat eu urna et malesuada. Interdum et malesuada fames ac ante ipsum primis in faucibus.",
  price: rand(10..99),
  location: "switzerland",
  user: provider_4
)

# ------------------------------------------------------------------------------
# CATEGORY 2: Personal Services

trainer = Service.new(
  name: "Gym trainer",
  category: "Personal Services",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce nec pellentesque elit. Maecenas sodales volutpat lacus. Nunc commodo enim id turpis posuere, ut ultrices libero mattis. Duis vitae gravida dui. In sodales pretium est ut vestibulum. Curabitur nisi orci, sagittis in arcu vel, mattis maximus dui. Integer enim erat, pellentesque ut faucibus eu, dignissim eu libero. Nam pretium sapien ipsum, ut congue orci fermentum nec. Maecenas consequat eu urna et malesuada. Interdum et malesuada fames ac ante ipsum primis in faucibus.",
  price: rand(10..99),
  location: "Bali",
  user: provider_1
)

chef = Service.new(
  name: "private chef",
  category: "Personal Services",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce nec pellentesque elit. Maecenas sodales volutpat lacus. Nunc commodo enim id turpis posuere, ut ultrices libero mattis. Duis vitae gravida dui. In sodales pretium est ut vestibulum. Curabitur nisi orci, sagittis in arcu vel, mattis maximus dui. Integer enim erat, pellentesque ut faucibus eu, dignissim eu libero. Nam pretium sapien ipsum, ut congue orci fermentum nec. Maecenas consequat eu urna et malesuada. Interdum et malesuada fames ac ante ipsum primis in faucibus.",
  price: rand(10..99),
  location: "Bali",
  user: provider_2
)

yoga = Service.new(
  name: "yoga instructor",
  category: "Personal Services",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce nec pellentesque elit. Maecenas sodales volutpat lacus. Nunc commodo enim id turpis posuere, ut ultrices libero mattis. Duis vitae gravida dui. In sodales pretium est ut vestibulum. Curabitur nisi orci, sagittis in arcu vel, mattis maximus dui. Integer enim erat, pellentesque ut faucibus eu, dignissim eu libero. Nam pretium sapien ipsum, ut congue orci fermentum nec. Maecenas consequat eu urna et malesuada. Interdum et malesuada fames ac ante ipsum primis in faucibus.",
  price: rand(10..99),
  location: "Bali",
  user: provider_3
)

massage =Service.new(
  name: "massage spa",
  category: "Personal Services",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce nec pellentesque elit. Maecenas sodales volutpat lacus. Nunc commodo enim id turpis posuere, ut ultrices libero mattis. Duis vitae gravida dui. In sodales pretium est ut vestibulum. Curabitur nisi orci, sagittis in arcu vel, mattis maximus dui. Integer enim erat, pellentesque ut faucibus eu, dignissim eu libero. Nam pretium sapien ipsum, ut congue orci fermentum nec. Maecenas consequat eu urna et malesuada. Interdum et malesuada fames ac ante ipsum primis in faucibus.",
  price: rand(10..99),
  location: "Bali",
  user: provider_4
)

massage.save!
yoga.save!
chef.save!
trainer.save!
skiying.save!
sky.save!
diving.save!
climbing.save!

# ------------------------------------------------------------------------------
# CATEGORY 3: Rentals

hi = Service.new(
  name: "erferf",
  category: "Rentals",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce nec pellentesque elit. Maecenas sodales volutpat lacus. Nunc commodo enim id turpis posuere, ut ultrices libero mattis. Duis vitae gravida dui. In sodales pretium est ut vestibulum. Curabitur nisi orci, sagittis in arcu vel, mattis maximus dui. Integer enim erat, pellentesque ut faucibus eu, dignissim eu libero. Nam pretium sapien ipsum, ut congue orci fermentum nec. Maecenas consequat eu urna et malesuada. Interdum et malesuada fames ac ante ipsum primis in faucibus.",
  price: rand(10..99),
  location: "Bali",
  user: provider_1
)

bye = Service.new(
  name: "ferfewrf",
  category: "Rentals",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce nec pellentesque elit. Maecenas sodales volutpat lacus. Nunc commodo enim id turpis posuere, ut ultrices libero mattis. Duis vitae gravida dui. In sodales pretium est ut vestibulum. Curabitur nisi orci, sagittis in arcu vel, mattis maximus dui. Integer enim erat, pellentesque ut faucibus eu, dignissim eu libero. Nam pretium sapien ipsum, ut congue orci fermentum nec. Maecenas consequat eu urna et malesuada. Interdum et malesuada fames ac ante ipsum primis in faucibus.",
  price: rand(10..99),
  location: "Bali",
  user: provider_2
)

here = Service.new(
  name: "frefef",
  category: "Rentals",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce nec pellentesque elit. Maecenas sodales volutpat lacus. Nunc commodo enim id turpis posuere, ut ultrices libero mattis. Duis vitae gravida dui. In sodales pretium est ut vestibulum. Curabitur nisi orci, sagittis in arcu vel, mattis maximus dui. Integer enim erat, pellentesque ut faucibus eu, dignissim eu libero. Nam pretium sapien ipsum, ut congue orci fermentum nec. Maecenas consequat eu urna et malesuada. Interdum et malesuada fames ac ante ipsum primis in faucibus.",
  price: rand(10..99),
  location: "Bali",
  user: provider_3
)

there = Service.new(
  name: "frefref",
  category: "Rentals",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce nec pellentesque elit. Maecenas sodales volutpat lacus. Nunc commodo enim id turpis posuere, ut ultrices libero mattis. Duis vitae gravida dui. In sodales pretium est ut vestibulum. Curabitur nisi orci, sagittis in arcu vel, mattis maximus dui. Integer enim erat, pellentesque ut faucibus eu, dignissim eu libero. Nam pretium sapien ipsum, ut congue orci fermentum nec. Maecenas consequat eu urna et malesuada. Interdum et malesuada fames ac ante ipsum primis in faucibus.",
  price: rand(10..99),
  location: "Bali",
  user: provider_4
)

hi.save!
bye.save!
here.save!
there.save!
# ------------------------------------------------------------------------------
# CATEGORY 3: Healthcare

no = Service.new(
  name: "Potion",
  category: "Healthcare",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce nec pellentesque elit. Maecenas sodales volutpat lacus. Nunc commodo enim id turpis posuere, ut ultrices libero mattis. Duis vitae gravida dui. In sodales pretium est ut vestibulum. Curabitur nisi orci, sagittis in arcu vel, mattis maximus dui. Integer enim erat, pellentesque ut faucibus eu, dignissim eu libero. Nam pretium sapien ipsum, ut congue orci fermentum nec. Maecenas consequat eu urna et malesuada. Interdum et malesuada fames ac ante ipsum primis in faucibus.",
  price: rand(10..99),
  location: "Bali",
  user: provider_1
)

yes = Service.new(
  name: "Flu medicine",
  category: "Healthcare",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce nec pellentesque elit. Maecenas sodales volutpat lacus. Nunc commodo enim id turpis posuere, ut ultrices libero mattis. Duis vitae gravida dui. In sodales pretium est ut vestibulum. Curabitur nisi orci, sagittis in arcu vel, mattis maximus dui. Integer enim erat, pellentesque ut faucibus eu, dignissim eu libero. Nam pretium sapien ipsum, ut congue orci fermentum nec. Maecenas consequat eu urna et malesuada. Interdum et malesuada fames ac ante ipsum primis in faucibus.",
  price: rand(10..99),
  location: "italy",
  user: provider_2
)

nothing = Service.new(
  name: "freferf",
  category: "Healthcare",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce nec pellentesque elit. Maecenas sodales volutpat lacus. Nunc commodo enim id turpis posuere, ut ultrices libero mattis. Duis vitae gravida dui. In sodales pretium est ut vestibulum. Curabitur nisi orci, sagittis in arcu vel, mattis maximus dui. Integer enim erat, pellentesque ut faucibus eu, dignissim eu libero. Nam pretium sapien ipsum, ut congue orci fermentum nec. Maecenas consequat eu urna et malesuada. Interdum et malesuada fames ac ante ipsum primis in faucibus.",
  price: rand(10..99),
  location: "Bali",
  user: provider_3
)

come = Service.new(
  name: "frefregg",
  category: "Healthcare",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce nec pellentesque elit. Maecenas sodales volutpat lacus. Nunc commodo enim id turpis posuere, ut ultrices libero mattis. Duis vitae gravida dui. In sodales pretium est ut vestibulum. Curabitur nisi orci, sagittis in arcu vel, mattis maximus dui. Integer enim erat, pellentesque ut faucibus eu, dignissim eu libero. Nam pretium sapien ipsum, ut congue orci fermentum nec. Maecenas consequat eu urna et malesuada. Interdum et malesuada fames ac ante ipsum primis in faucibus.",
  price: rand(10..99),
  location: "switzerland",
  user: provider_4
)

no.save!
yes.save!
nothing.save!
come.save!

puts 'Services created!'

# ------------------------------------------------------------------------------

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
