# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


  Place.create!(
    place: '北の湖',
  )

  Place.create!(
    place: '西の砂漠',
  )

  Place.create!(
    place: '南の塔',
  )

  Admin.create!(
   name: '瀧花新一',
   company: '日本精線株式会社',
   email: 'd@g',
   password: '098098',
  )

  User.create!(
   name: 'むじるしりょ',
   company: '日本精線株式会社',
   email: 'm@r',
   password: '098098',
  )

  User.create!(
   name: 'dam-san',
   company: '日本精線株式会社',
   email: 'd@s',
   password: '098098',
  )