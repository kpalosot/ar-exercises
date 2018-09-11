require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
@store1.employees.create(
  first_name: 'Kira',
  last_name: 'Yamato',
  hourly_rate: 85
)

@store1.employees.create(
  first_name: 'Athrun',
  last_name: 'Zala',
  hourly_rate: 77
)

@store1.employees.create(
  first_name: 'Cagali',
  last_name: 'Attha',
  hourly_rate: 75
)

@store1.employees.create(
  first_name: 'Lacus',
  last_name: 'Clyne',
  hourly_rate: 80
)

@store2.employees.create(
  first_name: 'Bruce',
  last_name: 'Wayne',
  hourly_rate: 100
)

@store2.employees.create(
  first_name: 'Tony',
  last_name: 'Stark',
  hourly_rate: 120
)

@store2.employees.create(
  first_name: 'Clark',
  last_name: 'Kent',
  hourly_rate: 95
)

@store2.employees.create(
  first_name: 'Wade',
  last_name: 'Wilson',
  hourly_rate: 125
)

pp Employee.all