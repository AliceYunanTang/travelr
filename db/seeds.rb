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
c1 = Comment.create title: 'Comment title' , description: 'The Blue Mountains is a mountaino'
c2 = Comment.create title: 'Comment title' , description: 'Welcome to the most exciting '
c3 = Comment.create title: 'Comment title' , description: 'Lang Park, also known as Sunc'

a1.spot = s1
a1.postcode = p1
a1.save
c1.update spot_id: s1.id
c2.update spot_id: s1.id
c3.update spot_id: s1.id

#associate the spot to the user record
s1.update user_id: u1.id
s2.update user_id: u2.id
s3.update user_id: u3.id
s4.update user_id: u4.id
s5.update user_id: u3.id
s6.update user_id: u4.id

#associate the comment to the user record
c1.update user_id: u1.id
c2.update user_id: u2.id
c3.update user_id: u3.id
