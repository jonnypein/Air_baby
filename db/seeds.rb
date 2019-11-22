# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Booking.destroy_all
Garment.destroy_all
User.destroy_all



user = User.create(email: "test333@test.com", password: "123456", name: "Joe Bloggs", location: "Hoxton")

garment1 = Garment.create(title: "nicde shorts", user: User.first, location: "kensinghton", daily_price: 3)
file = URI.open("https://res.cloudinary.com/dtjblav7i/image/upload/v1574434801/5017201J_nkltrs.jpg")
garment1.photos.attach(io: file, filename: '1482613.jpg', content_type: 'image/jpg')
garment1.save

Garment.create(title: "top", user: user, location: "kensinghton", daily_price: 2.5)
Garment.create(title: "hat", user: user, location: "kensinghton", daily_price: 4)

user2 = User.create(email: "user2@test.com", password: "123456", name: "John Smith", location: "Shoreditch")

Garment.create(title: "skirt", user: user2, location: "hoxton", description: "perfect state blue shorts suitable for 12 month.", daily_price: 2)
Garment.create(title: "hat", user: user2, location: "hoxton", description: "Summer hat suitable for 12 month.", daily_price: 1.5)
Garment.create(title: "sneakers", user: user2, location: "hoxton", description: "nice sneakers suitable for 12 month.", daily_price: 4)

user3 = User.create(email: "user3@test.com", password: "123456", name: "Sarah Long", location: "Kings Cross")
Garment.create(title: "Sequin - dress", user: user3, location: "Angel", description: "Embroidered & Sequin Heart Navy & Grey Striped Long Sleeve Tunic Top with Pockets - Girls 5-6", daily_price: 3)
Garment.create(title: "Strawberry - dress", user: user3, location: "Angel", description: "Strawberries Pink Jersey Dress - Girls 5-6", daily_price: 1.5)

user4 = User.create(email: "user4@test.com", password: "123456", name: "Michael Williams", location: "Brixton")
Garment.create(title: "Lined Coat", user: user4, location: "Brixton", description: "Purple Waterproof Fleece Lined Coat with Detachable Hood - Girls 5-6", daily_price: 5)
Garment.create(title: "Foxe Skirt", user: user4, location: "Brixton", description: "Foxes Green Cotton Skirt - Girls 6-7 - dress", daily_price: 1.5)


user5 = User.create(email: "user5@test.com", password: "123456", name: "Michelle Bloggs", location: "Hoxton")
Garment.create(title: "White Short Sleeve Bodysuits", user: user5, location: "Clapham", description: "White Short Sleeve Bodysuit - Boys/Girls 6-9m", daily_price: 0.5)
Garment.create(title: "Fluffy Suit", user: user5, location: "Clapham", description: "Monkey Brown & Beige Fluffy Pram Suit - Boys/Girls 6-9m", daily_price: 1.5)

user6 = User.create(email: "user6@test.com", password: "123456", name: "Sally Gray", location: "Acton")
Garment.create(title: "skirt", user: user6, location: "hoxton", description: "perfect state blue shorts suitable for 12 month.", daily_price: 2)
Garment.create(title: "hat", user: user6, location: "hoxton", description: "Summer hat suitable for 12 month.", daily_price: 1.5)
Garment.create(title: "sneakers", user: user6, location: "hoxton", description: "nice sneakers suitable for 12 month.", daily_price: 4)

user7 = User.create(email: "user7@test.com", password: "123456", name: "Wonda Riddle", location: "Holborn")
Garment.create(title: "skirt", user: user7, location: "hoxton", description: "perfect state blue shorts suitable for 12 month.", daily_price: 2)
Garment.create(title: "hat", user: user7, location: "hoxton", description: "Summer hat suitable for 12 month.", daily_price: 1.5)


garment = Garment.create(title: "sneakers", user: user7, location: "hoxton", description: "nice sneakers suitable for 12 month.", daily_price: 4)
file = URI.open(asset_path("1482613.jpg"))
garment.photo.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
garment.save



