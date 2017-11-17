# Question 3

# Let's call a method, and pass both a string and an array as parameters
# and see how even though they are treated in the same way by Ruby,
# the results can be different.

# Study the following code and state what will be displayed...and why:

def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  # += is an assignment method, this means
  # ruby has created a new object with the name "a_string_param".
  # It does not point at the same object as "my_string"
  # the value of "a_string_param" is going to be the value of "a_string_param"
  # with the string literal "rutabaga" appended to it.
  # my_string is not altered
  an_array_param << "rutabaga"
  # << is a mutating method.
  # this means an_array_param and my_array are pointing at the same object
  # both before and after the method call.
  # This means when an_array_param is changed, it also changes my_array
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"
