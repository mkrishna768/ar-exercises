require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
burnaby = Store.create(name: "Surrey", annual_revenue: 224000, mens_apparel: false, womens_apparel: true)
burnaby.save
richmond = Store.create(name: "Whistler", annual_revenue: 1900000, mens_apparel: true, womens_apparel: false)
richmond.save
gastown = Store.create(name: "Yaletown", annual_revenue: 430000, mens_apparel: true, womens_apparel: true)
gastown.save

@mens_stores = Store.where(mens_apparel: true)
@mens_stores.each do |store|
  puts "name: #{store.name} revenue: #{store.annual_revenue}"
end


@womens_stores = Store.where("womens_apparel = true and annual_revenue < 1000000")