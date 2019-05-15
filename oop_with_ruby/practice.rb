class GoodDog
  # DOG_YEARS = 7
  # @@number_of_dogs = 0

  # def initialize
  #   @@number_of_dogs += 1
  # end

  # def self.total_number_of_dogs
  #   @@number_of_dogs
  # end

  attr_accessor :name, :height, :weight

  def initialize(n, h, w)
    self.name = n
    self.weight = w
    self.height = h
  end

  def change_info(n, h, w)
    self.name = n
    self.height = h
    self.weight = w
  end

  # def speak
  #   "#{@name} says Arf!"
  # end

  def info
    "#{self.name} weighs #{self.weight} and is #{self.height} tall."
  end

  def what_is_self
    self
  end

  def MyAwesomeClass
    def self.this_is_a_class_method
    end
  end

  puts self


  # def info_in_info
  #   self.info
  # end

  # def self.what_am_i
  #   "I'm a GoodDog class!"
  # end

  # def to_s
  #   "This dog's name is #{name} and it is #{age} in dog years."
  # end
end

# puts GoodDog.total_number_of_dogs

# dog1 = GoodDog.new
# dog2 = GoodDog.new

# puts GoodDog.total_number_of_dogs

# sparky = GoodDog.new("Sparky", "12 inches", "10lbs")
# puts sparky.info 

# sparky.change_info("Spark", "11 inches", "9lbs")
# puts sparky.info

# puts sparky.info_in_info

# p GoodDog.what_am_i

# sparky = GoodDog.new("Sparky", "12 inches", "15 lbs")
# p sparky.what_is_self
GoodDog
# puts sparky.age
# puts sparky.to_s
# p sparky
