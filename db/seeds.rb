# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all

u1 = User.create email: 'politisj@gmail.com' , name: 'John Politis' , password: 'chicken', is_admin:true
u2 = User.create email: 'zin@gmail.com' , name: 'Zin' , password: 'chicken', is_admin:false
u3 = User.create email: 'anusha@gmail.com' , name: 'Anusha' , password: 'chicken', is_admin:true
u4 = User.create email: 'alice@gmail.com' , name: 'Alice Tang' , password: 'chicken', is_admin:true

# u1 = User.create email: 'politisj@gmail.com', name: 'John Politis' ,password_digest: 'chicken', is_admin:true
# u2 = User.create email: 'fred@gmail.com', name: 'fred freddddd' ,password_digest: 'chicken', is_admin:false
# u3 = User.create email: 'blob@gmail.com', name: 'blob blobblob' ,password_digest: 'chicken', is_admin:false
# u4 = User.create email: 'bill@gmail.com', name: 'bill billbill' ,password_digest: 'chicken', is_admin: true
