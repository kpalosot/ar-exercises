require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
surrey = Store.create(
  name: 'Surrey',
  annual_revenue: 224_000,
  womens_apparel: true
)

whistler = Store.create(
  name: 'Whistler',
  annual_revenue: 1_900_000,
  mens_apparel: true
)

yaletown = Store.create(
  name: 'Yaletown',
  annual_revenue: 430_000,
  mens_apparel: true,
  womens_apparel: true
)

mens_stores = Store.where(
  mens_apparel: true,
  womens_apparel: false
)

mens_stores.each { |store|
  puts "#{store.name} earns #{store.annual_revenue} per year."
}

fem_store_less_than_1mil = Store.where(
  "annual_revenue < 1000000",
  womens_apparel: true,
  mens_apparel: false
)
