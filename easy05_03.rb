# After Midnight (Part 2)
# As seen in the previous exercise, the time of day can be represented as the number of minutes before or after midnight. If the number of minutes is positive, the time is after midnight. If the number of minutes is negative, the time is before midnight.

# Write two methods that each take a time of day in 24 hour format, and return the number of minutes before and after midnight, respectively. Both methods should return a value in the range 0..1439.

# You may not use ruby's Date and Time methods.

# Examples:

# Copy Code
# after_midnight('00:00') == 0
# before_midnight('00:00') == 0
# after_midnight('12:34') == 754
# before_midnight('12:34') == 686
# after_midnight('24:00') == 0
# before_midnight('24:00') == 0

# Input: String representing time in a 24h hh:mm format
# Output: Integer representing the number of minutes before midnight, and the number after midnight

# Considerations:
# There are 1440 minutes in a day
# Two methods
# 24:00 is 0 minutes (total resets at 1440)

# Algorithm
#   Method receives string
#   Split string into hours and minutes and save to variable
#   Convert hours and minutes variables to integers
#   Multiply hours var by 60 and save return to same variable
#   Add hours and minutes together and save to total variable
#   Before midnight: total, return 0 if 1440
#   After midnight: 1440 - total

def after_midnight(clock)
  hh, mm = clock.split(":")
  hh = hh.to_i * 60
  total = hh + mm.to_i
  total == 1440 ? 0 : total
end

def before_midnight(clock)
  hh, mm = clock.split(":")
  hh = hh.to_i * 60
  total = hh + mm.to_i
  1440 - total == 1440 ? 0 : 1440 - total
end

p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0
