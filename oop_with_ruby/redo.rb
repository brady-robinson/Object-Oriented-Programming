module Declaw
  def declaw
    @claws = false
  end
end

class Cat
  include Declaw
  attr_accessor :type, :age, :claws
  def initialize(type, age, claws)
    @type = type
    @age = age
    @claws = claws
  end
end

tabby = Cat.new("Tabby", 10, true)
p tabby.age
p tabby.type
p tabby.declaw
p tabby.claws