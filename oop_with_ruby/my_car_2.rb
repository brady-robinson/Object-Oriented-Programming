module TrunkSpace
  def enough_space?(space, groceries)
    p space / groceries > 1 ? true : false
  end
end

class Vehicle
  @@instantiated = 0
  attr_accessor :color, :make, :type, :year

  def initialize(c, m, t, y)
    @color = c
    @make = m
    @year = y
    @type = t

    @@instantiated += 1
  end

  def self.number_of_vehicles
    p @@instantiated
  end

  def message
    p "This #{self.type} is a #{self.year} #{self.color} #{self.make}"
  end

  def gas_mileage(gallons, miles)
    puts "#{miles / gallons} miles per gallon of gas"
  end

  def public_age
    p "This #{self.make} is #{age} years old."
  end

  private

  def age
    Time.new.year - self.year
  end

end

class MyCar < Vehicle
  include TrunkSpace
end

class MyTruck < Vehicle
end


chevy = MyCar.new('blue', 'chevy', 'car', 1992)
chevy.message
chevy.gas_mileage(10, 200)
chevy.public_age

# puts "---Method lookup for Vehicle---"
# puts Vehicle.ancestors

# puts "---Method lookup for MyCar---"
# puts MyCar.ancestors

# puts "---Method lookup for MyTruck---"
# puts MyTruck.ancestors

# # chevy.instantiated
# Vehicle.number_of_vehicles

# buick = MyCar.new('blue', 'chevy', 1992)
# # buick.instantiated
# Vehicle.number_of_vehicles
