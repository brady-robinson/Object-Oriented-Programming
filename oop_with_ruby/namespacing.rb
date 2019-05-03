module Mammal
  class Dog
    def speak(sound)
      p "#{sound}"
    end
  end

  class Cat
    def say_name(name)
      p "#{name}"
    end
  end
end

module Insect
  def self.some_out_of_place_method(num)
    num ** 2
  end
end

value = Insect.some_out_of_place_method(2)
p value

buddy = Mammal::Dog.new
kitty = Mammal::Cat.new
buddy.speak('Arf!')
kitty.say_name('kitty')