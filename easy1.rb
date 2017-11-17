# ------------------------------------------------------------
# Question 1
# ------------------------------------------------------------
# What would you expect the code below to print out?
numbers = [1, 2, 2, 3]
numbers.uniq
# uniq does not mutate the caller
# new anonymous array has been created with value of [1, 2, 3]
# that means that numbers has not been modified
p numbers

# uniq! does mutate the caller
numbers.uniq!
p numbers

# ------------------------------------------------------------
# Question 2
# ------------------------------------------------------------
# Describe the difference between ! and ? in Ruby. And explain what
# would happen in the following scenarios:

# 1. what is != and where should you use it?

# means not equals - you'd usually want the false condition to be the
# else condition but in the case where's there's not a true condition
# then != should be used

# 2. put ! before something, like !user_name

# means not - in this case the check is to see if user_name has
# not been been set. nil and false both return false and it's
# unlikely that user_name is a boolean

# 3. put ! after something, like words.uniq!

# convention says that it mutates the caller but there are methods
# that don't end in ! that mutate the caller

# 4. put ? before something

# part of the ternary ( ? : ) operator

# 5. put ? after something

# convention is to append methods with a ? that return boolean

# 6. put !! before something, like !!user_name

# This shouldn't be used but it means true essentially - in this
# case it likely is looking for user_name to contain a value
# but not necessarily true

# ------------------------------------------------------------
# Question 3
# ------------------------------------------------------------
# Replace the word "important" with "urgent" in this string:

advice = "Few things in life are as important as house training your pet dinosaur.".sub(/important/, 'urgent')
advice.gsub!('important', 'urgent')
p advice

# ------------------------------------------------------------
# Question 4
# ------------------------------------------------------------
numbers = [1, 2, 3, 4, 5]
numbers.delete_at(1)
p numbers

# .delete_at mutates the caller. It deletes an array element at the index given

numbers = [1, 2, 3, 4, 5]
numbers.delete(1)
p numbers

# .delete deletes a certain number of elements from the beginning of the array

# ------------------------------------------------------------
# Question 5
# ------------------------------------------------------------
# Programmatically determine if 42 lies between 10 and 100.
# hint: Use Ruby's range object in your solution.
puts (10..100).cover?(42)

# ------------------------------------------------------------
# Question 6
# ------------------------------------------------------------
# Starting with the string:
# famous_words = "seven years ago..."
# show two different ways to put the expected "Four score and " in front of it.
famous_words = 'seven years ago...'
famous_words.prepend('Four score and ')
puts famous_words

famous_words = 'seven years ago...'
famous_words = "Four score and " + famous_words
puts famous_words

famous_words = 'seven years ago...'
famous_words = "Four score and " << famous_words
puts famous_words

# ------------------------------------------------------------
# Question 7
# ------------------------------------------------------------
def add_eight(number)
  number + 8
end

number = 2

how_deep = "number"
5.times { how_deep.gsub!("number", "add_eight(number)") }

p eval(how_deep)
# 10
# 18
# 26
# 34
# 42

# ------------------------------------------------------------
# Question 8
# ------------------------------------------------------------
flintstones = ["Fred", "Wilma"]
flintstones << ["Barney", "Betty"]
flintstones << ["BamBam", "Pebbles"]
p flintstones
#Make this into an un-nested array.
flintstones.flatten!
p flintstones

# ------------------------------------------------------------
# Question 9
# ------------------------------------------------------------
# Given the hash below
flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }
# Turn this into an array containing only two elements: Barney's name and Barney's number
p flintstones.assoc('Barney')
