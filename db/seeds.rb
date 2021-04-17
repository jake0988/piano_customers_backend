# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Appointment.destroy_all
Piano.destroy_all
Admin.destroy_all

a = User.create(first_name: "Sam" , last_name: "John",  email: "sjohn@gmail.com", address: "123-abc st.", phone_number: "(123) 123-1234")
b = User.create(first_name: "Erving" , last_name: "Smith",  email: "esmith@gmail.com", address: "123-abc st.", phone_number: "(123) 123-1234")
c = User.create(first_name:"Hans", last_name: "Gettleman",  email: "hgettleman@gmail.com", address: "123-abc st.", phone_number: "(123) 123-1234")

a.pianos.create(model: "Steinway", serial: "09124WFEW", age: 200, image_url: "https://steinwaypianodb.imgix.net/584537/ABubinga1.jpg?&w=1080&h=auto", private_technical_notes: "YIKES!")

a.pianos.create(model: "Boston", serial: "lkjans42", age: 3, image_url: "https://cdn.shopify.com/s/files/1/0050/7160/1782/products/IMG_3024-1_compact.jpg?v=1614120053", private_technical_notes: "uggh, craigslist")

b.pianos.create(model: "Mason & Hamlin", serial: "lkSFns42", age: 49, image_url: "https://www.jimlaabsmusicstore.com/wp-content/uploads/2019/06/Mason-Hamlin-BB.jpeg", private_technical_notes: "surpisingly musical")

c.pianos.create(model: "Boston", serial: "lkjans42", age: 3, image_url: "https://i.ebayimg.com/images/g/kAsAAOSwKtlWq~YX/s-l1600.jpg", private_technical_notes: "none too shabby!")


Admin.create(email: "pianotech@tech.com", password_digest: "123456")
