require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
stores = Store.all

puts "Total sum of annual revenue"
puts stores.sum(:annual_revenue)

puts "Average sum of annual revenue"
puts stores.sum(:annual_revenue) / stores.count

puts "Number of stores generating more than 1M in sales"
puts stores.where("annual_revenue >= 1000000").count