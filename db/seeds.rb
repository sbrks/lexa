# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Wipe the database
Record.destroy_all
# Let's create a bunch of records
Lawyer.create([
  {
    first_name: "On Avery Island",
    last_name: "Neutral Milk Hotel",
    location: "NYC",
    practice_areas: "https://upload.wikimedia.org/wikipedia/en/7/73/On_avery_island_album_cover.jpg",
    years_experience: 12
  },
  {
    first_name: "On Avery Island",
    last_name: "Neutral Milk Hotel",
    location: "NYC",
    practice_areas: "https://upload.wikimedia.org/wikipedia/en/7/73/On_avery_island_album_cover.jpg",
    years_experience: 12
  },
  {
    first_name: "On Avery Island",
    last_name: "Neutral Milk Hotel",
    location: "NYC",
    practice_areas: "https://upload.wikimedia.org/wikipedia/en/7/73/On_avery_island_album_cover.jpg",
    years_experience: 12
  }
])