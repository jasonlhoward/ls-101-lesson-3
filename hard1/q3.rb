# Question 3

# In other practice problems, we have looked at how the scope of variables
# affects the modification of one "layer" when they are passed to another.

# To drive home the salient aspects of variable scope and modification of
# one scope by another, consider the following similar sets of code.

# What will be printed by each of these code groups?

# A) ----------------------------------------------------------------------
def mess_with_vars(one, two, three)
  one = two
  # a new object with name one is created
  # one and two are pointing at the same object with the value of "two"
  two = three
  # a new object called two was created - so no longer bound to one
  # the value is set to "three" in this case
  three = one
  # a new object is created called three
  # it's pointed at the same object and value as one, which has
  # the value "two"

  # because all three statements are using an assignment method,
  # this means that none of the statement modified the objects used as
  # parameters of the method
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"       # => one is: one
puts "two is: #{two}"       # => two is: two
puts "three is: #{three}"   # => three is: three

# B) ----------------------------------------------------------------------
def mess_with_vars(one, two, three)
  one = "two"
  two = "three"
  three = "one"
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"       # => one is: one
puts "two is: #{two}"       # => two is: two
puts "three is: #{three}"   # => three is: three

# C) ----------------------------------------------------------------------
def mess_with_vars(one, two, three)
  one.gsub!("one","two")
  two.gsub!("two","three")
  three.gsub!("three","one")
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"       # => one is: two
puts "two is: #{two}"       # => two is: three
puts "three is: #{three}"   # => three is: one
