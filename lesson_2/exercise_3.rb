class Cat
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def rename(name)
    @name = name
  end

  def identify
    self
  end

  def self.generic_greeting
    puts "Hello! I'm a cat!"
  end

  def personal_greeting
    puts "Hello! My name is #{self.name}"
  end
end

kitty = Cat.new("Sophie")
Cat.generic_greeting
kitty.personal_greeting