require_relative 'animals'

gatsby = Cat.new("burglargh", "white")
puts gatsby.describe_animal
gatsby.set_noise("moooooo")
puts gatsby.describe_animal

viceroy = Cat.new("reeeeee", "black")

puts viceroy.describe_animal