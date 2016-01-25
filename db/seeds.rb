# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
10.times do
		product_info = Hash.new

		wholesale_price = Random.new.rand(1.0..100.0).round(2)
    
    product_info[:name] = FFaker::Lorem.words(5).join(" ")
    product_info[:description] = FFaker::Lorem.sentence
    product_info[:category] = FFaker::Lorem.words(3).join
    product_info[:sku] = FFaker::Lorem.words(2).join
    product_info[:wholesale] = wholesale_price
    product_info[:retail] = wholesale_price * 4

    Product.create(product_info)

end