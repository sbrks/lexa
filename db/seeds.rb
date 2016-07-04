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
    first_name: "On Avery Island",
    last_name: "Neutral Milk Hotel",
    location: "NYC",
    practice_areas: "https://upload.wikimedia.org/wikipedia/en/7/73/On_avery_island_album_cover.jpg",
    years_experience: 12,
    email: "abc@123.com",
    password: "password"
  },
  {
    first_name: "On Avery Island",
    last_name: "Neutral Milk Hotel",
    location: "NYC",
    practice_areas: "https://upload.wikimedia.org/wikipedia/en/7/73/On_avery_island_album_cover.jpg",
    years_experience: 12,
    email: "abc@123.com",
    password: "password"
  },
  {
    first_name: "On Avery Island",
    last_name: "Neutral Milk Hotel",
    location: "NYC",
    practice_areas: "https://upload.wikimedia.org/wikipedia/en/7/73/On_avery_island_album_cover.jpg",
    years_experience: 12,
    email: "abc@123.com",
    password: "password"
  }
])

clients = Client.create([
  {first_name:"Kate",last_name:"Lincoln",email:"kl@gmail.com",location:"Beaverton, CO",phone:"303-555-4444",password:"password",
    description:"Torn L3 ligament, misaligned clavicle",
    image_url:"https://ucarecdn.com/a1272143-9cdf-49c3-9b9a-9e953b74d1e7/DefaultUserImage.png"},
  {first_name:"Vinjay",last_name:"Sulman",email:"vinjay@yahoo.com",location:"Alexandria, VA",phone:"703-555-5555",password:"password",
    description:"Aggravated lower lumbar, hip malaplaysia",
    image_url:"https://ucarecdn.com/a1272143-9cdf-49c3-9b9a-9e953b74d1e7/DefaultUserImage.png"},
  {first_name:"Leticia",last_name:"Abercrombie",email:"ladyw@hotmal.com",location:"Colorado Springs, CO",phone:"303-555-6666",password:"password",
    description:"Sciatic crease, irregular spagiotic hemotoma",
    image_url:"https://ucarecdn.com/a1272143-9cdf-49c3-9b9a-9e953b74d1e7/DefaultUserImage.png"},
  {first_name:"Dan",last_name:"Davis",email:"ddavis@msn.com",location:"Pittsburg, PA",phone:"412-555-7777",password:"password",
    description:"Torn humeral mass, shattered right tibia",
    image_url:"https://ucarecdn.com/a1272143-9cdf-49c3-9b9a-9e953b74d1e7/DefaultUserImage.png"}
  ])

	clients.each do |c|
		c.save
	end

