# After Midnight (Part 1)
# The time of day can be represented as the number of minutes before or after midnight. If the number of minutes is positive, the time is after midnight. If the number of minutes is negative, the time is before midnight.

# Write a method that takes a time using this minute-based format and returns the time of day in 24 hour format (hh:mm). Your method should work with any integer input.

# You may not use ruby's Date and Time classes.

# Examples:

# Copy Code
# time_of_day(0) == "00:00"
# time_of_day(-3) == "23:57"
# time_of_day(35) == "00:35"
# time_of_day(-1437) == "00:03"
# time_of_day(3000) == "02:00"
# time_of_day(800) == "13:20"
# time_of_day(-4231) == "01:29"
# Disregard Daylight Savings and Standard Time and other complications.

# Problem
# Write a method that converts an integer to a time, working either backwards or forwards from midnight depending on whether that integer, which represents minutes, is negative or positive, respectively

# Rules
# the input will be an integer of indeterminate size, including 0 and negative numbers
# the input will be in minutes
# the output must be in a 24h format, such that hh:mm
# the output will be a string
# daylight savings time, time zone, and other time complications will not apply
# if positive, count up
# if negative, count down
# days will not be counted, resetting the clock to 00:00

# input: integer
# output: string

# considerations:
#   1 hour = 60 minutes
#   24 hours = 00:00

# Algorithm
# initialize constant of 24 elements reperesenting the clock by index position
# define method
# define method with one paramater, receiving the input integer
# input integer = integer % 24
# hh, mm = integer.divmod(60)
# return: "#{CLOCK[hh]}:#{mm.to_s}"

CLOCK = %w[00 01 02 03 04 05 06 07 08 09 10 11 12 13 14 15 16 17 18 19 20 21 22 23]

def time_of_day(integer)
  integer, mm = integer.divmod(60)
  if integer.negative?
    (-integer > 24) ? (integer = integer % -24) : integer
  elsif integer
    (integer > 24) ? (integer = integer % 24) : integer
  end
  (mm == 0) ? (mm = "#{mm}0") : (mm < 10) ? (mm = "0#{mm}") : mm
  "#{CLOCK[integer]}:#{mm}"
end

p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"