# In the previous practice problem we added Dino to our array like this:

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
# flintstones << "Dino"
# We could have used either Array#concat or Array#push to add Dino to the family.

# yes ...
flintstones.push('Dino')

# How can we add multiple items to our array? (Dino and Hoppy)
p flintstones.concat( ['Dino', 'Hoppy'] )
