# Consider the following method and a call to that method:

def my_method(a, b = 2, c = 3, d)
  p [a, b, c, d]
end

my_method(4, 5, 6)

# Use the ruby documentation to determine what this code will print.

# argument error: arguments expected for, provided 3. no argument for d as a = 4, b = 5, c = 6. The default values in the method definition are reassigned to the provided values in the method call, but there is no default for d.

# oops, i guess i should read the documentation