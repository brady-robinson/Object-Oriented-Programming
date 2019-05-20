class Person
  attr_accessor :name, :pets

  def initialize(name)
    @name = name
    @pets = []
  end
end

class Cat
  def jump
    p 'cat jump'
  end
end

class Bulldog
  def jump
    p 'dog jump'
  end
end

bob = Person.new("Robert")

kitty = Cat.new
bud = Bulldog.new

bob.pets << kitty
bob.pets << bud

bob.pets.each do |pet|
  pet.jump
end