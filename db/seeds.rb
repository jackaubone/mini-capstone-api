# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


product1 = Product.create(name: "Giant Rasta Banana", price: 100, image_url:"https://img.5milesapp.com/image/upload/f_auto,t_i800/v1481413844/wvcqca8bhrs3x443pyya.jpg", description: "A giant rasta banana, the perfect best friend.")

#product1.save
p product1