# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
product = Product.new(
  name:"Mask",
  price: 5,
  image_url: "https://i.etsystatic.com/12262653/r/il/354d6f/4786069627/il_1588xN.4786069627_t8fl.jpg",
  description:"Mask of a fox",
)
product.save


supplier = Supplier.new(
  name: "Party City",
  email: "partyCity@gmail.com",
  phone_number: "5555556000"
)
supplier.save