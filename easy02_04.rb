# When will I Retire?

# Build a program that displays when the user will retire and how many years she has to work till retirement.

# Example:

# What is your age? 30
# At what age would you like to retire? 70

# It's 2016. You will retire in 2056.
# You have only 40 years of work to go!
require 'date'

puts "How old are you?"
age = gets.chomp.to_i

puts "At what age would you like to retire?"
age_retire = gets.chomp.to_i

today = Date.today.to_s.split('-')[0].to_i

years_til_retire = (age_retire - age > 0) ? age_retire - age : false

retirement_year  = years_til_retire ? years_til_retire + today : "INVALID RETIREMENT AGE"

puts "It's #{today}. You will retire in #{retirement_year}."
puts "You only have #{years_til_retire} years to work."
puts "And then you will die."
