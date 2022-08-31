# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


product1 = Product.create(
  name: "Giant Rasta Banana", 
  price: 100,
  mage_url:"https://img.5milesapp.com/image/upload/f_auto,t_i800/v1481413844/wvcqca8bhrs3x443pyya.jpg",
  description: "A giant rasta banana, the perfect best friend."
  )

#product1.save

product = Product.create(
  name: "Crab", 
  price: 5,
  image_url: "https://i.pinimg.com/originals/d6/60/37/d660375ad1189c2b6caba56c9b8bbd27.jpg", 
  description: "A delicious meal."
)

Product.create(
  name: "Ford Mustang", 
  price: 10000, 
  image_url: "https://cdn.motor1.com/images/mgl/Gx4J1/s1/4x3/2022-ford-mustang-shelby-gt500-heritage-edition-front-corner-high-angle.webp", 
  description: "A really fast and manly car." 
)
p product