# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(name: "User1Name", email: "user1email")
User.create(name: "User2Name", email: "user2email")
User.create(name: "User3Name", email: "user3email")
User.create(name: "User4Name", email: "user4email")
Follow.create(follower_id: 1, followee_id: 2)
Name.create(user_id: 1, nameString: "namestring1")
Name.create(user_id: 1, nameString: "namestring2")
Namevote.create(user_id: 2, name_id: 1)
Namevote.create(user_id: 3, name_id: 1)
Namevote.create(user_id: 4, name_id:2)