# Question 4

# To drive that last one home...let's turn the tables and have the string
# show a modified output, while the array thwarts the method's efforts to
# modify the caller's version of it.

def tricky_method_two(a_string_param, an_array_param)
  a_string_param << 'rutabaga'
  # << does modify the caller, so this means that a_string_param and
  # my_string point to the same object. When the object value changes,
  # both variables point to this new value.
  an_array_param = ['pumpkins', 'rutabaga']
  # = is an assignment method
  # ruby will give the return value a new object and the original object
  # will remain unchanged
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method_two(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"
