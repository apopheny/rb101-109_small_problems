# How old is Teddy?

# Build a program that randomly generates and prints Teddy's age. To get the age, you should generate a random number between 20 and 200.

# Example Output

# Teddy is 69 years old!

age = (20..200).to_a.sample

puts "Please provide a name"
name = gets.chomp

puts "#{ name.empty? ? "Teddy" : name.capitalize } is #{age} years old!"

# Further Exploration

# Modify this program to ask for a name, and then print the age for that person. For an extra challenge, use "Teddy" as the name if no name is entered.

