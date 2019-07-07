module Speed 
  def go_fast
    puts "I am a #{self.class} and going super fast!"
  end
end

class Car
  include Speed
  def go_slow
    puts "I am safe and driving slow."
  end
end

class Truck
  include Speed
  def go_very_slow
    puts "I am a heavy truck and like going very slow."
  end
end

red_truck = Truck.new
green_car = Car.new

red_truck.go_fast
green_car.go_fast

# self.class returns the name of the class that the module is contained in
# Self.class works like this:
# - self refers to the object iself, in this case either a car or truck object
# - we ask self to tell us its class with .class. It tells us.
# - We don't need to use to_s here because it is inside of a string and is interpolated
#   which means it will take care to fthe to_s for us