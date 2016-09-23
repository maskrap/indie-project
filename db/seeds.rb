# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

businesses = [
  ['Pok Pok', 'Restaurant', '3226 SE Division St', 'Andy Ricker', '1', '(503) 232-1387', 1],
  ['Pip\'s Doughnuts and Chai', 'Donut Shop', '4759 NE Fremont St', 'Jamie Snell', '2', '(503) 206-8692', 2],
  ['Dove Vivi', 'Restaurant', '2727 NE Glisan St', 'Andy Ricker', '3', '(503) 239-4444', 3],
  ['Nong\'s Khao Man Gai', 'Restaurant', '609 SE Ankeny St', 'Nong', '4', '(503) 740-2907', 4],
  ['New Seasons Market Williams', 'Grocery Store', '3445 N Williams Ave', 'Mr. New', '5', '(503) 528-2888', 5],
  ['Ecliptic Brewing', 'Brewery', '825 N Cook St', 'John Hop', '6', '(503) 265-8002', 6]
]

businesses.each do |biz_name, biz_type, biz_address, biz_contact, biz_number, biz_phone, user_id|
  Business.create( biz_name: biz_name, biz_type: biz_type, biz_address: biz_address, biz_contact: biz_contact, biz_number: biz_number, biz_phone: biz_phone, user_id: user_id)
end
