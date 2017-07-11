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
s1 = Spot.create title: 'Blue mountains' , description: 'The Blue Mountains is a mountainous region and a mountain range located in New South Wales, Australia'
s2 = Spot.create title: 'New Destination' , description: 'Welcome to the most exciting list of tourist attractions '
s3 = Spot.create title: 'Brisbane' , description: 'Tourism in Brisbane is an important industry '
s4 = Spot.create title: 'Pearl Harbour' , description: 'The Story Bridge is a Brisbane icon'
s5 = Spot.create title: 'Kangaroo Point' , description: 'The Kangaroo Point Cliffs extend south from just north of the former Naval Bridge Depot to the former South Brisbane Dry Dock'
s6 = Spot.create title: 'Lang Park' , description: 'Lang Park, also known as Suncorp Stadium, '


Postcode.destroy_all
puts 'Loading PostCodes...'
p1 = Postcode.create postcode: '2780' , country: 'Aus'

Address.destroy_all
puts 'Loading Addresses...'
a1 = Address.create address_line: 'Blue mountains' , suburb: 'Katoomba', state: 'NSW' , longitude: 150.310 ,latitude: -33.710

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


a1.spot = s1
a1.postcode = p1
a1.save
