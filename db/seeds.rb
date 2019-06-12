# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Seller.destroy_all
Product.destroy_all
Category.destroy_all

marcus = Seller.create(name: "Marcus", rating: 3, membership_type: "prime")
sahnun = Seller.create(name: "Sahnun", rating: 5, membership_type: "prime")
supreet = Seller.create(name: "supreet", rating: 4, membership_type: "standard")
tod = Seller.create(name: "tod", rating: 1, membership_type: "standard")



jewelry = Category.create(name: "Jewelry")
clothing = Category.create(name: "Clothing")
shoes = Category.create(name: "Shoes")

Product.create(name: "Throbe", seller_id: marcus.id , category_id: clothing.id )
Product.create(name: "Balenciage T shirt", seller_id: marcus.id,category_id: clothing.id )
Product.create(name: "Gold Chain", seller_id: marcus.id,category_id: jewelry.id )
Product.create(name: "Nike Air Force 1", seller_id: marcus.id,category_id: shoes.id )



Product.create(name: "Bro Cap", seller_id: tod.id, category_id: clothing.id )
Product.create(name: "Wristband", seller_id: tod.id,category_id: jewelry.id )
Product.create(name: "Adidas Yeezy", seller_id: tod.id,category_id: shoes.id )

Product.create(name: "Hibaya", seller_id: sahnun.id, category_id: clothing.id )
Product.create(name: "Headscarf", seller_id: sahnun.id,category_id: clothing.id)
Product.create(name: "Xosgunti", seller_id: sahnun.id ,category_id: clothing.id)
Product.create(name: "Sandals", seller_id: sahnun.id,category_id: shoes.id )

Product.create(name: "Hat", seller_id: supreet.id,category_id: clothing.id )
Product.create(name: "T shirt", seller_id: supreet.id,category_id: clothing.id )
Product.create(name: "Pumas", seller_id: supreet.id,category_id: shoes.id )
