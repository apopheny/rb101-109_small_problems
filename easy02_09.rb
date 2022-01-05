# String Assignment

# Take a look at the following code:

# name = 'Bob'
# save_name = name
# name = 'Alice'
# puts name, save_name

# What does this code print out? Think about it for a moment before continuing.

# => 'Alice
# => 'Bob'

# If you said that code printed

# Alice
# Bob

# you are 100% correct, and the answer should come as no surprise. Now, let's look at something a bit different:

# name = 'Bob'
# save_name = name
# name.upcase!
# puts name, save_name

# What does this print out? Can you explain these results?

# => BOB
# => BOB

# Name is initialized and assigned to a String object with a value of "Bob". save_name is then initialized to point at that same String object.
# We then call a mutative method on name, which modifies that object to "BOB".
# Both name and save_name still point at that same object, and therefore the output is expected.