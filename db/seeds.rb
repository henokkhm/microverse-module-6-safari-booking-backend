# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Create Admin
admin = User.create!(
  email: 'admin@test.com',
  password: 'password',
  first_name: 'Henary',
  last_name: 'kh',
  phone_no: '1234567891',
  username: 'admin',
  role: "admin"
)

# Create normal user
user1 = User.create!(
  email: 'user1@test.com',
  password: 'password',
  first_name: 'Henary',
  last_name: 'kh',
  phone_no: '1234567890',
  username: 'user1'
)

user2 = User.create!(
  email: 'user2@test.com',
  password: 'password',
  first_name: 'Chalambi',
  last_name: 'kh',
  phone_no: '9876543210',
  username: 'user2'
)

# Create safaris

safari1 = Safari.create!(
  name: "Okavango Delta Discovery",
  location: "Botswana",
  description: "Explore the unique waterways and lush islands of the Okavango Delta.\n\nImmerse yourself in the beauty of the Okavango Delta, known for its picturesque waterways and abundant wildlife. Prepare for an adventure of a lifetime with mokoro rides, game walks, and breathtaking sunsets. Navigate the maze of channels lined with papyrus reeds, encountering hippos, crocodiles, and colorful birdlife. Witness the seasonal floodwaters transform the landscape, creating a haven for wildlife and a paradise for photographers. Experience the magic of gliding silently through crystal-clear waters, surrounded by the sights and sounds of Africa's pristine wilderness.\n\nDon't miss your chance to explore the Okavango Delta. Book your Delta Discovery today!",
  price: 4200,
  img: "okavango-delta-cover.png"
)

safari2 = Safari.create!(
  name: "Namib Desert Expedition",
  location: "Namibia",
  description: "Experience the mesmerizing landscapes of the world's oldest desert.\n\nEmbark on a thrilling adventure through the red dunes and surreal landscapes of the Namib Desert. Discover ancient rock formations, encounter unique wildlife, and stargaze in the clear desert skies. Explore the iconic Sossusvlei, where towering sand dunes meet stark white clay pans, creating a dramatic contrast against the blue sky. Trek through hidden canyons and rugged mountains, uncovering the secrets of this ancient desert ecosystem. Experience the magic of sunrise over the dunes and sunset over the Atlantic Ocean, painting the landscape in shades of gold and crimson.\n\nDon't miss your chance to explore the mesmerizing Namib Desert. Book your expedition today!",
  price: 3800,
  img: "namib-desert-cover.png"
)

Safari.create!(
  name: "Maasai Mara Safari",
  location: "Kenya",
  description: "Witness the abundance of wildlife in the iconic Maasai Mara Reserve.\n\nJoin expert guides on a safari in the Maasai Mara, home to the Big Five and the annual wildebeest migration. Enjoy game drives, cultural interactions with the Maasai people, and stunning views of the savannah. Experience the thrill of tracking lions on the hunt, spotting elusive cheetahs in the grasslands, and witnessing herds of elephants bathing in the rivers. Immerse yourself in the rich biodiversity of the Mara, where every day brings new encounters and unforgettable moments.\n\nDon't miss your chance to witness the abundance of wildlife in the Maasai Mara. Book your safari today!",
  price: 4000,
  img: "maasai-mara-cover.png"
)

Safari.create!(
  name: "Victoria Falls Wilderness",
  location: "Zimbabwe",
  description: "Experience the awe-inspiring Victoria Falls and surrounding wildlife.\n\nJourney to the majestic Victoria Falls and explore the surrounding wilderness. Enjoy thrilling activities such as helicopter rides, boat safaris, and walks along the Zambezi River. Witness the sheer power and beauty of the falls as millions of gallons of water cascade over the cliffs, creating rainbows and mist-filled gorges. Encounter iconic African wildlife, including elephants, buffalo, and hippos, in their natural habitat. Relax in luxury lodges overlooking the falls, where you can unwind and soak in the breathtaking views.\n\nExperience the wonders of Victoria Falls. Book your wilderness adventure today!",
  price: 4500,
  img: "victoria-falls-cover.png"
)

Safari.create!(
  name: "Bwindi Gorilla Trek",
  location: "Uganda",
  description: "Embark on a once-in-a-lifetime trek to encounter mountain gorillas in Bwindi Impenetrable Forest.\n\nEmbark on a challenging yet rewarding trek through the dense Bwindi Impenetrable Forest to witness the majestic mountain gorillas. Experience the thrill of close encounters with these incredible creatures. Trek through lush rainforests, tangled vines, and mist-shrouded valleys, accompanied by experienced guides who will share their knowledge of the gorillas and their habitat. Learn about conservation efforts to protect these endangered animals and the unique ecosystem they inhabit. Immerse yourself in the sights, sounds, and smells of the jungle, as you search for these elusive and remarkable primates.\n\nEmbark on a once-in-a-lifetime adventure. Book your Bwindi Gorilla Trek today!",
  price: 5000,
  img: "bwindi-gorilla-cover.png"
)

Safari.create!(
  name: "Kalahari Desert Expedition",
  location: "South Africa",
  description: "Discover the vastness and unique ecosystems of the Kalahari Desert.\n\nExplore the striking landscapes and unique ecosystems of the Kalahari Desert. Enjoy guided walks, wildlife tracking, and stargazing in the clear desert nights. Experience the silence and solitude of the desert, where the vast expanses of sand and sky stretch endlessly in every direction. Encounter desert-adapted wildlife, such as meerkats, oryx, and springbok, as they navigate the harsh desert environment. Learn about the adaptations and survival strategies of these remarkable creatures, as you observe them in their natural habitat.\n\nExperience the wonder of the Kalahari Desert. Book your expedition now!",
  price: 3800,
  img: "kalahari-desert-cover.png"
)

Safari.create!(
  name: "Rwenzori Mountain Trek",
  location: "Uganda",
  description: "Challenge yourself with a trek to the 'Mountains of the Moon' in Rwenzori National Park.\n\nEmbark on an adventurous trek to the Rwenzori Mountains, also known as the 'Mountains of the Moon.' Experience diverse ecosystems, stunning alpine scenery, and the thrill of summiting one of Africa's tallest peaks. Traverse glaciers, scramble over boulders, and navigate through lush rainforests, as you ascend towards the summit. Encounter unique flora and fauna found nowhere else on Earth, including endemic species adapted to the extreme conditions of the high-altitude environment. Witness breathtaking sunrises and sunsets from your mountain camp, surrounded by towering peaks and endless skies.\n\nChallenge yourself with the Rwenzori Mountain Trek. Book now!",
  price: 4700,
  img: "rwenzori-mountain-cover.png"
)

Safari.create!(
  name: "Chobe River Safari",
  location: "Botswana",
  description: "Cruise along the Chobe River and witness the incredible concentration of wildlife.\n\nEmbark on a river safari along the Chobe River, known for its incredible wildlife concentrations. Enjoy boat cruises, bird watching, and the opportunity to witness large herds of elephants and other animals. Explore the labyrinth of channels and islands that make up the Chobe River system, encountering hippos, crocodiles, and a dazzling array of birdlife. Watch in awe as elephants gather at the water's edge to drink and play, while herds of buffalo graze on the lush riverbanks. Experience the magic of the African bush from the comfort of your boat, as you glide silently through this pristine wilderness.\n\nDon't miss your chance to experience the incredible Chobe River Safari. Book now!",
  price: 4200,
  img: "chobe-river-cover.png"
)

Safari.create!(
  name: "Makgadikgadi Pans Expedition",
  location: "Botswana",
  description: "Explore the vast salt pans and encounter unique desert-adapted wildlife.\n\nVenture into the expansive Makgadikgadi Pans and discover the stark beauty of the salt flats. Experience quad biking, cultural encounters with local communities, and witness the unique desert-adapted wildlife. Trek across the shimmering salt pans, where the horizon stretches endlessly in every direction, creating an otherworldly landscape. Encounter desert-adapted species such as meerkats, springbok, and brown hyenas, as they navigate the harsh desert environment. Discover ancient archaeological sites and fossilized remains, offering glimpses into the region's rich history and prehistoric past.\n\nEmbark on an expedition to the Makgadikgadi Pans and uncover its mysteries. Book now!",
  price: 4000,
  img: "makgadikgadi-pans-cover.png"
)

# Create reservations
Reservation.create!(
  user: user1,
  safari: safari1,
  bookingDate: '2024-02-15',
  numberofPersons: '2',
  totalAmount: 4200.00
)

Reservation.create!(
  user: user1,
  safari: safari2,
  bookingDate: '2024-03-20',
  numberofPersons: '3',
  totalAmount: 3800.00
)

Reservation.create!(
  user: user2,
  safari: safari1,
  bookingDate: '2024-02-15',
  numberofPersons: '4',
  totalAmount: 4200.00
)

Reservation.create!(
  user: user2,
  safari: safari2,
  bookingDate: '2024-03-20',
  numberofPersons: '4',
  totalAmount: 3800.00
)
