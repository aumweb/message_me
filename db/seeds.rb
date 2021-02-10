# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# User.create(username: 'sanjay',email: 'sanjay.yadav@inuscg.com',password: 'P@assw0rd')
# User.create(username: 'karan',email: 'karan.patel@inuscg.com',password: 'P@assw0rd')
# User.create(username: 'kiran',email: 'kiran.makwana@inuscg.com',password: 'P@assw0rd')
# User.create(username: 'milind',email: 'milind.sikhlighar@inuscg.com',password: 'P@assw0rd')
# User.create(username: 'jignesh',email: 'jignesh.nai@inuscg.com',password: 'P@assw0rd')

Message.create(body: 'Hello Everyone',user_id: 1)
Message.create(body: 'Hello from Sanjay',user_id: 2)
Message.create(body: 'Hello from karan',user_id: 3)
Message.create(body: 'Hello from kiran',user_id: 4)
Message.create(body: 'Hello from milind',user_id: 5)
Message.create(body: 'Hello from jignesh',user_id: 6)
Message.create(body: 'Kya bolti public',user_id: 6)