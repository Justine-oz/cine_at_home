
require "faker"
require "open-uri"


puts "Destroy Screenings"
Screening.destroy_all
puts "Create screenings"

screening = Screening.new(
  film: "Godzilla: King of the Monsters",
  description: "The crypto-zoological agency Monarch faces off against a battery of god-sized monsters, including the mighty Godzilla, who collides with Mothra, Rodan, and his ultimate nemesis, the three-headed King Ghidorah.",
  location: "Marseille",
  number_of_guests: rand(0..15),
  datetime: Faker::Date.between(from: '2020-09-23', to: '2021-09-25'),
  price: rand(5..20),
  user: User.first
)
url = URI.open('https://m.media-amazon.com/images/M/MV5BOGFjYWNkMTMtMTg1ZC00Y2I4LTg0ZTYtN2ZlMzI4MGQwNzg4XkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_SY1000_CR0,0,674,1000_AL_.jpg'
)
screening.photos.attach(io: url, filename: 'Godzilla.png', content_type: 'image/png')
screening.save



screening = Screening.new(
  film: "Parasites",
  description: 'Greed and class discrimination threaten the newly formed symbiotic relationship between the wealthy Park family and the destitute Kim clan.',
  location: "Nice",
  number_of_guests: rand(0..15),
  datetime: Faker::Date.between(from: '2020-09-23', to: '2021-09-25'),
  price: rand(5..20),
  user: User.first
)
url = URI.open("https://m.media-amazon.com/images/M/MV5BYWZjMjk3ZTItODQ2ZC00NTY5LWE0ZDYtZTI3MjcwN2Q5NTVkXkEyXkFqcGdeQXVyODk4OTc3MTY@._V1_SY1000_CR0,0,674,1000_AL_.jpg"
)
screening.photos.attach(io: url, filename: 'Parasites.png', content_type: 'image/png')
screening.save






screening = Screening.new(
  film: 'A Fistful Of Dynamite',
  description: 'A low-life bandit and an I.R.A. explosives expert rebel against the government and become heroes of the Mexican Revolution.',
  location: "Lyon",
  number_of_guests: rand(0..15),
  datetime: Faker::Date.between(from: '2020-09-23', to: '2021-09-25'),
  price: rand(5..20),
  user: User.first
)
url = URI.open('https://m.media-amazon.com/images/M/MV5BMjAzNzExMTk3N15BMl5BanBnXkFtZTYwNjY5NjM5._V1_.jpg')
screening.photos.attach(io: url, filename: 'A_fistful_of_dynamite.png', content_type: 'image/png')
screening.save



screening = Screening.new(
  film: "Dark Floors",
  description: 'A man emerges with his autistic daughter and three others from a hospital elevator to find themselves trapped in the building with devilish monsters.',
  location: "Perpignan",
  number_of_guests: rand(0..15),
  datetime: Faker::Date.between(from: '2020-09-23', to: '2021-09-25'),
  price: rand(5..20),
  user: User.first
)
url = URI.open('https://m.media-amazon.com/images/M/MV5BYzE2NTE2YmItY2NiMC00MmIwLWE5NTktM2Q5YmIzZGIyZWRjXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_SX700_CR0,0,700,999_AL_.jpg')
screening.photos.attach(io: url, filename: 'dark_floors.png', content_type: 'image/png')
screening.save






# Screening.new({
#   url = 'https://m.media-amazon.com/images/M/MV5BMjVjOGQ0OTctNDhkZC00ZGNiLWI2ZGEtYjZlMWZjOTlkNDlhXkEyXkFqcGdeQXVyNjg1MjEwOTM@._V1_SY1000_CR0,0,666,1000_AL_.jpg'
#   film: “Spaceballs”,
#   description: 'A star pilot and his sidekick must come to the rescue of a Princess and save the galaxy from a ruthless race of beings known as Spaceballs.',
#   location: “Deauville”,
#   number_of_guests: rand(0..15),
#   datetime: Faker::Date.between(from: ‘2020-09-23’, to: ‘2021-09-25’),
#   price: rand(5..20),
#   user: User.first
# })
# Screening.new({
#   url = 'https://m.media-amazon.com/images/M/MV5BODhiMzkwYTctYzgwOC00MDM2LWExYjQtMzY4MDljZjQ3M2RmXkEyXkFqcGdeQXVyNDg4NjY5OTQ@._V1_SY1000_CR0,0,675,1000_AL_.jpg'
#   film: “The Dirt”,
#   description: 'Based on the bestselling autobiography from Mötley Crüe, the film is an unflinching tale of success and excess as four misfits rise from the streets of Hollywood to the heights of international fame.',
#   location: “Deauville”,
#   number_of_guests: rand(0..15),
#   datetime: Faker::Date.between(from: ‘2020-09-23’, to: ‘2021-09-25’),
#   price: rand(5..20),
#   user: User.first
# })
# Screening.new({
#   url = 'https://m.media-amazon.com/images/M/MV5BMTMxNTY0MzU1MV5BMl5BanBnXkFtZTYwODgwNjQ3._V1_.jpg'
#   film: “The Emperor’s New Groove”,
#   description: 'Emperor Kuzco is turned into a llama by his ex-administrator Yzma, and must now regain his throne with the help of Pacha, the gentle llama herder.',
#   location: 'Saint-Malo',
#   number_of_guests: rand(0..15),
#   datetime: Faker::Date.between(from: ‘2020-09-23’, to: ‘2021-09-25’),
#   price: rand(5..20),
#   user: User.first
# })
# Screening.new({
#   url = 'https://m.media-amazon.com/images/M/MV5BN2VlODE0NTEtMWVmMi00ZTE5LWIxOGQtODlkMjQyZTMzZmNjXkEyXkFqcGdeQXVyMTExMDY5MjY5._V1_SY1000_CR0,0,683,1000_AL_.jpg'
#   film: 'Lupin III: The First',
#   description: “Lupin III goes on a grand adventure to uncover the secrets of the Bresson Diary, which is tied to the legacy of his famous grandfather.“,
#   location: “Rodez”,
#   number_of_guests: rand(0..15),
#   datetime: Faker::Date.between(from: ‘2020-09-23’, to: ‘2021-09-25’),
#   price: rand(5..20),
#   user: User.first
# })
# Screening.new({
#   url = 'https://m.media-amazon.com/images/M/MV5BN2QxZWRiMGYtYTBiNy00ZGZkLTk2YTctMDgwNmNjZmM3YTNlXkEyXkFqcGdeQXVyMTYxNjkxOQ@@._V1_SY1000_CR0,0,732,1000_AL_.jpg'
#   film: 'Police Academy',
#   description: 'A group of good-hearted, but incompetent misfits enter the police academy, but the instructors there are not going to put up with their pranks.',
#   location: 'Saint-Tropez',
#   number_of_guests: rand(0..15),
#   datetime: Faker::Date.between(from: ‘2020-09-23’, to: ‘2021-09-25’),
#   price: rand(5..20),
#   user: User.first
# })
# puts “Done”
