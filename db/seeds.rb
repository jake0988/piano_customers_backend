# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(name:"Sam John", username: "sjohn", email: "sjohn@gmail.com", address: "123-abc st.", phone_numnber: "(123) 123-1234", password: "123456")
User.create(name:"Erving Smith", username: "esmith", email: "esmith@gmail.com", address: "123-abc st.", phone_numnber: "(123) 123-1234", password: "123456")
User.create(name:"Hans Gettleman", username: "hgettlman", email: "hgettleman@gmail.com", address: "123-abc st.", phone_numnber: "(123) 123-1234", password: "123456")

Admin.create(username: "pianotech", email: "pianotech@tech.com", password: "123456")