# Tip calculator

# Create a simple tip calculator. The program should prompt for a bill amount and a tip rate. The program must compute the tip and then display both the tip and the total amount of the bill.

# Example:

# What is the bill? 200
# What is the tip percentage? 15

# The tip is $30.0
# The total is $230.0

puts "How much is the bill?"
bill = gets.chomp.to_f

puts "What percentage would you like to tip?"
tip = gets.chomp.to_f

def tip_fee(percent, check)
  (percent / 100) * check
end

def total(check, percent)
  check + (percent/100 * check)
end

puts "Tipping #{tip}% is an additional $#{'%.2f' % (tip_fee(tip, bill))}."
puts "The total for the bill and tip is $#{'%.2f' % (total(bill, tip))}"
