class Animal
  def eat
    puts "num"
  end
end

class Fish < Animal
  def eat
    puts "num num"
  end
end

class Cat < Animal
  def eat
     puts "num num num"
  end
end

def feed_animal(animal)
  animal.eat
end

array_of_animals = [Animal.new, Fish.new, Cat.new]

array_of_animals.each do |animal|
  feed_animal(animal)
end