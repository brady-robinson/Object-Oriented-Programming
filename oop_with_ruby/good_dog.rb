class GoodDog
  DOG_YEARS = 7

  attr_accessor :name, :weight, :height

  def initialize(n, h, w)
    self.name = n
    self.height = h
    self.weight = w
  end

  def change_info(n, h, w)
    self.name = n
    self.height = h
    self.weight = w
  end

  def info
    puts "#{self.name} weighs #{self.weight} and is #{self.height} tall."
  end

  def what_is_self
    self
  end

  def public_disclosure
    "#{self.name} in human years is #{human_years}"
  end

  private 

  def human_years
    age * DOG_YEARS
  end
end

sparky = GoodDog.new('Sparky', '12 inches', '10 lbs')
sparky.human_years