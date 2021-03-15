# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users =
  User.create!(
    [
      email: 'admin@love-foundation.org',
      password: 'all1needislove',
      hub: Hub.first,
      firstname: 'Admin',
      lastname: 'Gudelaunus',
    ],
  )

hubs =
  Hub.create!(
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

events =
  Event.create!(
    [
      {
        name: 'Awesome Party at KitKat',
        location: 'Kitkat',
        date: Time.now,
        hub: Hub.first,
      },
      {
        name: 'Awesome Party at Berghain',
        location: 'Berghain',
        date: Time.now,
        hub: Hub.second,
      },
      {
        name: 'Awesome Party at Mensch Meier',
        location: 'Mensch Meier',
        date: Time.now,
        hub: Hub.last,
      },
    ],
  )

expenses =
  Expense.create!(
    [
      {
        name: 'DJ Travel Cost',
        description: 'Train Tickets',
        amount: 221.20,
        event: Event.first,
        user: User.first,
      },
      {
        name: 'Fruit o Clock',
        description: 'Fruits',
        amount: 21.87,
        event: Event.first,
        user: User.first,
      },
      {
        name: 'Big costs',
        description: 'Great great costs',
        amount: 123.45,
        event: Event.first,
        user: User.first,
      },
      {
        name: 'All dem moneys',
        description: 'More moneys',
        amount: 54.321,
        event: Event.first,
        user: User.first,
      },
      {
        name: 'Other Expense',
        description: 'Dis expense',
        amount: 213.87,
        event: Event.last,
        user: User.first,
      },
    ],
  )
