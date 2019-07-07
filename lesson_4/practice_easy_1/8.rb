class Cat
  attr_accessor :type, :age

  def initialize(type)
    @type = type
    @age = 0
  end

  def make_one_year_older
    self.age += 1
  end
end

# What does self refer to?
# - make_one_year_older is an instance method and can only be called on instances
#   of the class Cat
# - Self references the instance (object) that called the method - the calling object
