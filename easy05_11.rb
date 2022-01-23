# Spin Me Around In Circles

# You are given a method named spin_me that takes a string as an argument and returns a string that contains the same words, but with each word's characters reversed. Given the method's implementation, will the returned string be the same object as the one passed in as an argument or a different object?

def spin_me(str)
  a = str.split.each do |word|
    word.reverse!
  end.join(" ")
end

spin_me("hello world") # "olleh dlrow"

# the String#split method will initialize an array which will not be the same object as the String pointed to by str. The substrings will be split and at the end the Array#join method will also return a new string.