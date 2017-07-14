# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
puts 'Loading Users...'
u1 = User.create email: 'politisj@gmail.com' , name: 'John Politis' , password: 'chicken', is_admin:true
u2 = User.create email: 'zin@gmail.com' , name: 'Zin' , password: 'chicken', is_admin:false
u3 = User.create email: 'anusha@gmail.com' , name: 'Anusha' , password: 'chicken', is_admin:true
u4 = User.create email: 'alice@gmail.com' , name: 'Alice Tang' , password: 'chicken', is_admin:true
u5 = User.create email: 'dummy@gmail.com' , name: 'Tom Brady' , password: 'chicken', is_admin:false


Spot.destroy_all
puts 'Loading Spots ...'
s1 = Spot.create title: 'Blue mountains' , description: 'According to local legend, Katoomba was the site of a secret underground tunnel designed as a wartime emergency escape route. The tunnel is thought to run from the Carrington Hotel across the street to the Savoy Cafe (formerly a movie theatre).', user_id: u1.id
s2 = Spot.create title: 'Barangaroo' , description: 'Invented by Paul Keating ', user_id: u1.id, image: 'http://nnimgt-a.akamaihd.net/transform/v1/crop/frm/silverstone-feed-data/20e8a6e8-7c91-4fcf-bd4f-739356d52297.jpg/r0_0_729_409_w1200_h678_fmax.jpg'
s3 = Spot.create title: 'Bloody Melbourne' , description: 'According to the RSPCA, Melbourne is officially the fox capital of the world, with between 6 and 23 foxes per square kilometre in the urban area of the city.', user_id: u1.id
s4 = Spot.create title: 'Lockyer Valley' , description: "Nearly all the nation's processing beetroot is grown in the Lockyer Valley. Probably responsible for that slimy red circle in your burger. Thanks a lot Big Beetroot.", user_id: u1.id
s5 = Spot.create title: 'Kangaroo Point' , description: 'The Kangaroo Point Cliffs extend south from just north of the former Naval Bridge Depot to the former South Brisbane Dry Dock', user_id: u1.id
s6 = Spot.create title: 'Lang Park' , description: 'Lang Park, also known as Suncorp Stadium, ', user_id: u1.id
s7 = Spot.create title: 'Soz no spots here' , description: 'Soz no spots here, ', user_id: u1.id



Postcode.destroy_all
puts 'Loading PostCodes...'
p1 = Postcode.create postcode: '2780' , country: 'Aus'
p2 = Postcode.create postcode: '2000' , country: 'Aus'
p3 = Postcode.create postcode: '3000' , country: 'Aus'
p4 = Postcode.create postcode: '3757' , country: 'Aus'

Address.destroy_all
puts 'Loading Addresses...'
a1 = Address.create address_line: 'Blue mountains' , suburb: 'Katoomba', state: 'NSW' , longitude: 150.310 ,latitude: -33.710, postcode: p1, spot: s1
a2 = Address.create address_line: '12 Barangaroo' , suburb: 'Barangaroo', state: 'NSW' , longitude: 151.210 ,latitude:-33.860, postcode: p2, spot: s2
a3 = Address.create address_line: '34 Melbourne' , suburb: 'Melbourne', state: 'VIC' , longitude: 144.970 ,latitude:-37.810, postcode: p3, spot: s3
a4 = Address.create address_line: '333 Lockyer' , suburb: 'Lockyer', state: 'QLD' , longitude: 152.150 ,latitude: -27.590, postcode: p4, spot: s4
a5 = Address.create address_line: 'Mount Disappointment' , suburb: 'Whittlesea', state: 'VIC' , longitude: 145.136373 ,latitude: -37.426432, postcode: p4, spot: s7

Comment.destroy_all
puts 'Loading Comment...'
c1 = Comment.create title: 'Comment title' , description: 'I lost my dog here. Where is my dog?', spot_id: s1.id, user_id: u5.id
c2 = Comment.create title: 'Comment title' , description: 'Beautiful place but I got very sunburnt. 1 star.', spot_id: s2.id, user_id: u2.id
c3 = Comment.create title: 'Comment title' , description: "This is God's country. Lost my favourite hat here.", spot_id: s3.id, user_id: u2.id
c4 = Comment.create title: 'Comment title' , description: 'I have never been here but I get a really good vibe.', spot_id: s4.id, user_id: u2.id
c5 = Comment.create title: 'Comment title' , description: 'I had a dream about going here once and it was lovely.', spot_id: s5.id, user_id: u2.id
c6 = Comment.create title: 'Comment title' , description: 'I would like to apply for permission to build an unauthorised Twilight themepark here. Please consider this my formal application.', spot_id: s6.id, user_id: u2.id
c7 = Comment.create title: 'Comment title' , description: 'My dog and I are currently (separately) lost here. Please send help. I am almost out of battery on my phone.', spot_id: s1.id, user_id: u5.id
c8 = Comment.create title: 'Comment title' , description: 'Just spoke to my wife, she informs me that the dog made it home by himself. I think I just saw the Blair Witch. Remember me as a hero.', spot_id: s1.id, user_id: u5.id


# '2000', 'Barangaroo', 'NSW', -33.860, 151.210),
# ('3000', 'Melbourne', 'VIC', -37.810, 144.970),
# ('4344', 'Lockyer', 'QLD', -27.590, 152.150),


# a1.spot = s1
# a1.postcode = p1
# a1.save
#
# a2.spot = s2
# a2.postcode = p2
# a2.save
#
# a3.spot = s3
# a3.postcode = p3
# a3.save
#
# a4.spot = s4
# a4.postcode = p4
# a4.save

# c1.update spot_id: s1.id
# c2.update spot_id: s1.id
# c3.update spot_id: s1.id

#associate the spot to the user record
# s1.update user_id: u1.id
# s2.update user_id: u2.id
# s3.update user_id: u3.id
# s4.update user_id: u4.id
# s5.update user_id: u3.id
# s6.update user_id: u4.id

#associate the comment to the user record
# c1.update user_id: u1.id
# c2.update user_id: u2.id
# c3.update user_id: u3.id
