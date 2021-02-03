# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

  Place.create!(
   place: '第1工場',
  )

  Admin.create!(
   name: '管理',
   company: 'knowHows.co',
   email: 'admin@admin.com',
   password: '098098',
  )

  # User.create!(
  #  name: '社員',
  #  company: 'knowHows.co',
  #  email: 'user@user.com',
  #  password: '098098',
  # )


   # 3.times do |number|
   #  Place.create!(
   #    place: "第#{number}工場",
   #    )

   #  Box.create!(
   #    name: "変電所(母)#{number}",
   #    place_id: number,
   #    floor: 0,
   #    kind: 0,
   #  )

   cv3c_sq=[2.0,3.0,5.5,8.0,14.0,22.0,38.0,60.0,100.0,150.0,200.0,250.0,325.0]
   cv3c_size=[23,33,44,54,76,100,140,190,260,340,410,470,555]

   cvt_sq=[8.0,14,22,38,60,100,150,200,250,325]
   cvt_size=[62,86,110,155,210,290,380,465,535,635]

   cv2c_sq=[2.0,3.0,5.5,8.0,14,22,38,60,100,150,200,250,325]
   cv2c_size=[28,39,52,65,91,120,170,225,310,400,485,560,660]

  sqArray=cv3c_sq
  sizeArray=cv3c_size

  sqArray.size.times do |i|
   Cable.create!(
    name: "CV #{sqArray[i]}sq-3C",
    core: 3,
    sq: sqArray[i],
    size: sizeArray[i],
   )
  end

  sqArray=cvt_sq
  sizeArray=cvt_size

  sqArray.size.times do |i|
   Cable.create!(
    name: "CVT #{sqArray[i]}sq",
    core: 3,
    sq: sqArray[i],
    size: sizeArray[i],
   )
  end

  sqArray=cv2c_sq
  sizeArray=cv2c_size

  sqArray.size.times do |i|
   Cable.create!(
    name: "CV #{sqArray[i]}sq-2C",
    core: 2,
    sq: sqArray[i],
    size: sizeArray[i],
   )
  end