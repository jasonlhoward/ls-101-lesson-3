# Question 3

# Alan wrote the following method, which was intended to show all
# of the factors of the input number:

# def factors(number)
#   dividend = number
#   divisors = []
#   begin
#     divisors << number / dividend if number % dividend == 0
#     dividend -= 1
#   end until dividend == 0
#   divisors
# end

# Alyssa noticed that this will fail if the input is 0, or a
# negative number, and asked Alan to change the loop.
# How can you make this work without using begin/end/until?
# Note that we're not looking to find the factors for 0 or
# negative numbers, but we just want to handle it gracefully
# instead of raising an exception or going into an infinite loop.

def factors(number)
  dividend = number
  divisors = []
  while dividend > 0
    divisors << number / dividend if (number % dividend).zero?
    dividend -= 1
  end
  divisors
end

# Bonus 1
# What is the purpose of the number % dividend == 0 ?

# Only the dividends that evenly divide the number are added to the array

# Bonus 2
# What is the purpose of the second-to-last line in the
# method (the divisors before the method's end)?

# to give the method a return value of the array
