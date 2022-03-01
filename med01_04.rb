# 1000 Lights
# You have a bank of switches before you, numbered from 1 to n. Each switch is connected to exactly one light that is initially off. You walk down the row of switches and toggle every one of them. You go back to the beginning, and on this second pass, you toggle switches 2, 4, 6, and so on. On the third pass, you go back again to the beginning and toggle switches 3, 6, 9, and so on. You repeat this process and keep going until you have been through n repetitions.

# Write a method that takes one argument, the total number of switches, and returns an Array that identifies which lights are on after n repetitions.

# Example with n = 5 lights:

# round 1: every light is turned on
# [true, true, true, true, true]
# round 2: lights 2 and 4 are now off; 1, 3, 5 are on
# [true, false, true, false, true]
# round 3: lights 2, 3, and 4 are now off; 1 and 5 are on
# [true, false, false, false, true]
# round 4: lights 2 and 3 are now off; 1, 4, and 5 are on
# [true, false, false, true, true]
# round 5: lights 2, 3, and 5 are now off; 1 and 4 are on
# [true, false, false, true, false]
# The result is that 2 lights are left on, lights 1 and 4. The return value is [1, 4].

# With 10 lights, 3 lights are left on: lights 1, 4, and 9. The return value is [1, 4, 9].

def lights(int)
  light_arr = []
  int.times do
  light_arr << false
  end

  counter = 1
  loop do
    light_arr.each_with_index do |light, index|
      if (index + 1) % counter == 0
        light == false ? light_arr[index] = true : light_arr[index] = false
      end
    end
    counter += 1
    break if (counter) > int
  end
  
  result = []
  light_arr.each_with_index { |light, index| light ? result << index + 1 : light}
  result
end

p lights(1000)
