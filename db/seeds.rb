# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

hubs =
  Hub.create(
    [
      { city: 'Berlin', country: 'Germany' },
      { city: 'Dresden', country: 'Germany' },
      { city: 'Munich', country: 'Germany' },
      { city: 'Amsterdam', country: 'The Netherlands' },
      { city: 'Maastricht', country: 'The Netherlands' },
      { city: 'Tel Aviv', country: 'Israel' },
      { city: 'Cape Town', country: 'South Africa' },
    ],
  )
