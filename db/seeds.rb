# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Wipe the database
Lawyer.destroy_all
Client.destroy_all

lawyers = Lawyer.create([
  {
    first_name: "Serena",
    last_name: "Williams",
    location: "Chicago",
    image_url: "https://upload.wikimedia.org/wikipedia/en/7/73/On_avery_island_album_cover.jpg",
    years_experience: 5,
    practice_areas: "White collar litigation"
  },
  {
    first_name: "Martina",
    last_name: "Navritalova",
    location: "NYC",
    image_url: "https://upload.wikimedia.org/wikipedia/en/7/73/On_avery_island_album_cover.jpg",
    years_experience: 8,
    practice_areas: "White collar litigation"
  },
  {
    first_name: "Andre",
    last_name: "Agassi",
    location: "Boston",
    image_url: "https://upload.wikimedia.org/wikipedia/en/7/73/On_avery_island_album_cover.jpg",
    years_experience: 12,
    practice_areas: "White collar litigation"
  },
    {
    first_name: "Steffi",
    last_name: "Graf",
    location: "San Francisco",
    image_url: "https://upload.wikimedia.org/wikipedia/en/7/73/On_avery_island_album_cover.jpg",
    years_experience: 8,
    practice_areas: "White collar litigation"
  },
    {
    first_name: "Rafael",
    last_name: "Nadal",
    location: "Los Angeles",
    image_url: "https://upload.wikimedia.org/wikipedia/en/7/73/On_avery_island_album_cover.jpg",
    years_experience: 8,
    practice_areas: "White collar litigation"
  },
    {
    first_name: "Novak",
    last_name: "Djokovic",
    location: "Miami",
    image_url: "https://upload.wikimedia.org/wikipedia/en/7/73/On_avery_island_album_cover.jpg",
    years_experience: 8,
    practice_areas: "White collar litigation"
  }
])


	lawyers.each do |l|
		l.save
	end


clients = Client.create([
  {first_name:"Kate",last_name:"Lincoln",location:"Beaverton, CO",phone:"303-555-4444",
    description:"Torn L3 ligament, misaligned clavicle",
    image_url:"https://ucarecdn.com/a1272143-9cdf-49c3-9b9a-9e953b74d1e7/DefaultUserImage.png"},
  {first_name:"Vinjay",last_name:"Sulman",location:"Alexandria, VA",phone:"703-555-5555",
    description:"Aggravated lower lumbar, hip malaplaysia",
    image_url:"https://ucarecdn.com/a1272143-9cdf-49c3-9b9a-9e953b74d1e7/DefaultUserImage.png"},
  {first_name:"Leticia",last_name:"Abercrombie",location:"Colorado Springs, CO",phone:"303-555-6666",
    description:"Sciatic crease, irregular spagiotic hemotoma",
    image_url:"https://ucarecdn.com/a1272143-9cdf-49c3-9b9a-9e953b74d1e7/DefaultUserImage.png"},
  {first_name:"Dan",last_name:"Davis",location:"Pittsburg, PA",phone:"412-555-7777",
    description:"Torn humeral mass, shattered right tibia",
    image_url:"https://ucarecdn.com/a1272143-9cdf-49c3-9b9a-9e953b74d1e7/DefaultUserImage.png"}
  ])

	clients.each do |c|
		c.save
	end

