# Shorten this sentence:

advice = "Few things in life are as important as house training your pet dinosaur."
# ...remove everything starting from "house".
advice.slice!(0, advice.index('house'))
p advice
# Review the String#slice! documentation, and use that method to make the
# return value "Few things in life are as important as ". But leave the
# advice variable as "house training your pet dinosaur.".
advice = "Few things in life are as important as house training your pet dinosaur."
p advice.slice!('Few things in life are as important as ')
p advice

# As a bonus, what happens if you use the String#slice method instead?

# The return value is what was sliced out but the variable being sliced
# from stays the same because slice does not mutate the caller
