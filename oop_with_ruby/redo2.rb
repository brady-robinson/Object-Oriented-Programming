module SprayPaint
  def spray_paint(color)
    @color = color
  end
end

module Towable
  def tow(item)
    "This truck is towing a #{item}"
  end
end

class Vehicle
  include SprayPaint
  attr_accessor :color
  attr_reader :year, :model

  @@number_of_vehicles = 0
  
  def initialize(y,c,m)
    @year = y
    @color = c
    @model = m
    @current_speed = 0
    @age_of_vehicle = 0
    @current_year = 0
    @@number_of_vehicles += 1
  end

  def speed_up
    @current_speed += 5
    "You sped up to #{@current_speed}"
  end

  def brake
    @current_speed -= 5
    "You slowed down to #{@current_speed}"
  end

  def shut_off
    @current_speed = 0
    "You slowed down to #{@current_speed} and shut it down."
  end

  def current_speed
    @current_speed
    "Your current speed is #{@current_speed}"
  end

  def self.mpg(gallons, miles)
    puts "This car gets #{miles/gallons} miles per gallon."
  end

  def to_s
    "This #{self.model} is #{self.color}."
  end

  def self.total_vehicles
    @@number_of_vehicles
  end

  private

  def calculate_age
    t = Time.now
    @current_year = t.year
    @age_of_vehicle = @current_year - self.year
  end

  public

  def age
    "This vehicle is #{calculate_age} years old."
  end
end

class MyCar < Vehicle
  TRUNK = true
  BED = false

  def initialize(y,m,c)
    super(y,m,c)
  end
end

class MyTruck < Vehicle
  include Towable
  BED = true
  Trunk = false

  def initialize(y,m,c)
    super(y,m,c)
  end

end

chevy = MyCar.new(1997, "Brown", "Silverado")
dodge = MyTruck.new(1999, "Red", "Ram")

# puts chevy.year
# puts chevy.color
# puts chevy.model
# puts chevy.current_speed
# puts chevy.speed_up
# puts chevy.speed_up
# puts chevy.shut_off
# chevy.color = "Blue"
# puts chevy.color

# chevy.spray_paint("Brown")
# puts chevy.color

# MyCar.mpg(16, 300)

# puts chevy
# puts dodge
# puts Vehicle.total_vehicles
# puts dodge.tow("camper")

# puts "--MyCar Lookup--"
# puts MyCar.ancestors
# puts "-----------------"
# puts "--MyTruck Lookup--"
# puts MyTruck.ancestors
# puts "--Vehicle Lookup--"
# puts Vehicle.ancestors

puts chevy.age
puts dodge.age
