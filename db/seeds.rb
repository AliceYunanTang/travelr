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
s1 = Spot.create title: 'Blue mountains' , description: 'Blue Mountains Scenic'


Postcode.destroy_all
puts 'Loading PostCodes...'
p1 = Postcode.create postcode: '2780' , country: 'Aus'

Address.destroy_all
puts 'Loading Addresses...'
a1 = Address.create address_line: 'Blue mountains' , suburb: 'Katoomba', state: 'NSW' , longitude: 150.310 ,latitude: -33.710

Comment.destroy_all
puts 'Loading Comment...'
c1 = Comment.create title: 'Comment title' , description: 'This is describes the spot'

a1.spot = s1
a1.postcode = p1
a1.save










puts 'Loading Comments...'
