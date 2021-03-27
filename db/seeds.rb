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

User.create(first_name: "Sam" , last_name: "John",  email: "sjohn@gmail.com", address: "123-abc st.", phone_number: "(123) 123-1234", password_digest: "123456", number_of_pianos: 4)
User.create(first_name: "Erving" , last_name: "Smith",  email: "esmith@gmail.com", address: "123-abc st.", phone_number: "(123) 123-1234", password_digest: "123456")
User.create(first_name:"Hans", last_name: "Gettleman",  email: "hgettleman@gmail.com", address: "123-abc st.", phone_number: "(123) 123-1234", password_digest: "123456")


Piano.create(model: "Steinway", serial: "09124WFEW", age: 200, image_url: "https://steinwaypianodb.imgix.net/584537/ABubinga1.jpg?&w=1080&h=auto", user_id: 1, private_technical_notes: "YIKES!")
Piano.create(model: "Boston", serial: "lkjans42", age: 3, image_url: "https://cdn.shopify.com/s/files/1/0050/7160/1782/products/IMG_3024-1_compact.jpg?v=1614120053", user_id: 1, private_technical_notes: "uggh, craigslist")
Piano.create(model: "Mason & Hamlin", serial: "lkSFns42", age: 49, image_url: "https://www.jimlaabsmusicstore.com/wp-content/uploads/2019/06/Mason-Hamlin-BB.jpeg", user_id: 2, private_technical_notes: "surpisingly musical")
Piano.create(model: "Boston", serial: "lkjans42", age: 3, image_url: "https://www.ebay.com/itm/Upright-Piano-Ivers-and-Pond-/141890711197", user_id: 3, private_technical_notes: "none too shabby!")

Admin.create(email: "pianotech@tech.com", password_digest: "123456")

Appointment.create(date: "01_4_20", price: "5000", work_performed: "pitch-raise", notes_for_customer: "piano could use some work", user_id: 1, initial_a4_frequency: "420", piano_id: 0)
Appointment.create(date: "01_4_20", price: "6000", work_performed: "fine tuning", notes_for_customer: "piano could use more work", user_id: 1, initial_a4_frequency: "440", piano_id: 1)
Appointment.create(date: "01_3_20", price: "4000", work_performed: "replaced hammer", notes_for_customer: "piano could use some work", user_id: 2, initial_a4_frequency: "430", piano_id: 2)
Appointment.create(date: "01_2_20", price: "2000", work_performed: "string splice", notes_for_customer: "piano could use some work", user_id: 3, initial_a4_frequency: "410", piano_id: 3)
