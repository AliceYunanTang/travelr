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

puts 'Loading Spots ...'
s1 = Spot.create title: 'Blue mountains' , description: 'The Blue Mountains is a mountainous region and a mountain range located in New South Wales, Australia', user_id: u1.id
s2 = Spot.create title: 'New Destination' , description: 'Welcome to the most exciting list of tourist attractions ', user_id: u1.id
s3 = Spot.create title: 'Brisbane' , description: 'Tourism in Brisbane is an important industry ', user_id: u1.id
s4 = Spot.create title: 'Pearl Harbour' , description: 'The Story Bridge is a Brisbane icon', user_id: u1.id
s5 = Spot.create title: 'Kangaroo Point' , description: 'The Kangaroo Point Cliffs extend south from just north of the former Naval Bridge Depot to the former South Brisbane Dry Dock', user_id: u1.id
s6 = Spot.create title: 'Lang Park' , description: 'Lang Park, also known as Suncorp Stadium, ', user_id: u1.id




Postcode.destroy_all
puts 'Loading PostCodes...'
p1 = Postcode.create postcode: '2780' , country: 'Aus'
p2 = Postcode.create postcode: '2000' , country: 'Aus'
p3 = Postcode.create postcode: '3000' , country: 'Aus'
p4 = Postcode.create postcode: '4344' , country: 'Aus'

Address.destroy_all
puts 'Loading Addresses...'
a1 = Address.create address_line: 'Blue mountains' , suburb: 'Katoomba', state: 'NSW' , longitude: 150.310 ,latitude: -33.710
# a1 = Address.create address_line: 'Blue mountains' , suburb: 'Katoomba', state: 'NSW' , longitude: 150.310 ,latitude: -33.710
# a1 = Address.create address_line: 'Blue mountains' , suburb: 'Katoomba', state: 'NSW' , longitude: 150.310 ,latitude: -33.710
a2 = Address.create address_line: '12 Barangaroo' , suburb: 'Barangaroo', state: 'NSW' , longitude: 151.210 ,latitude:-33.860
a3 = Address.create address_line: '34 Melbourne' , suburb: 'Melbourne', state: 'VIC' , longitude: 144.970 ,latitude:-37.810
a4 = Address.create address_line: '333 Lockyer' , suburb: 'Lockyer', state: 'QLD' , longitude: 152.150 ,latitude: -27.590


Comment.destroy_all
puts 'Loading Comment...'
c1 = Comment.create title: 'Comment title' , description: 'I lost my dog here. Where is my dog? Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', spot_id: s1.id, user_id: u2.id
c2 = Comment.create title: 'Comment title' , description: 'Beautiful place but I got very sunburnt. 1 star. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', spot_id: s2.id, user_id: u2.id
c3 = Comment.create title: 'Comment title' , description: 'The most beautiful place on earth after Tempe. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', spot_id: s3.id, user_id: u2.id
c4 = Comment.create title: 'Comment title' , description: 'I have never been here but I get a really good vibe. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', spot_id: s4.id, user_id: u2.id
c5 = Comment.create title: 'Comment title' , description: 'I had a dream about going here once and it was lovely. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', spot_id: s5.id, user_id: u2.id
c6 = Comment.create title: 'Comment title' , description: 'I would like to apply for permission to build a 2 storey house here. Is the correct place to put my application? Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', spot_id: s6.id, user_id: u2.id
c7 = Comment.create title: 'Comment title' , description: 'I am currently lost here. Please send help. I am almost out of battery on my phone. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', spot_id: s1.id, user_id: u2.id
c8 = Comment.create title: 'Comment title' , description: 'A third comment. long one. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', spot_id: s1.id, user_id: u2.id
c9 = Comment.create title: 'Comment title' , description: 'A fourth comment. I am almost out of battery on my phone. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', spot_id: s1.id, user_id: u2.id

# '2000', 'Barangaroo', 'NSW', -33.860, 151.210),
# ('3000', 'Melbourne', 'VIC', -37.810, 144.970),
# ('4344', 'Lockyer', 'QLD', -27.590, 152.150),


a1.spot = s1
a1.postcode = p1
a1.save

a2.spot = s2
a2.postcode = p2
a2.save

a3.spot = s3
a3.postcode = p3
a3.save

a4.spot = s4
a4.postcode = p4
a4.save

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
