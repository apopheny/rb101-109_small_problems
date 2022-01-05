# Mutation

# What will the following code print, and why? Don't run the code until you have tried to answer.

array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value }
p array1
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
puts array2

# Moe
# Larry
# CURLY
# SHEMP
# Harpo
# CHICO
# Groucho
# Zeppo

# When we run the first .each method value becomes a local variable copy which references the same objects as referenced at the indexes of the array1 variable. We utilize a mutative method, pushing each element so that array2 now contains the same String data as well as the same object references that array1 does. That is to say that although array1 and array2 are separate Array objects, their indices contain references to the same String objects. array1 remains unchanged as the << method does not mutate its calling object, but merely the recipient object.

# When we call the array1.each method a second time, value again becomes a local variable copy which references the same objects as referenced at the indexes of the array1 variable. As such, when we call a mutative method on these values, which point at the same String objects as the String object referenced within the arrays array1 and array2, all are mutated, although value is scoped only at the level of the .each method.