class MovingVehicle
  attr_accessor :speed, :heading

  def initialize(km_traveled_per_liter, liters_of_fuel_capacity)
    @fuel_efficiency = km_traveled_per_liter
    @fuel_capacity = liters_of_fuel_capacity
  end

  def range
    @fuel_capacity * @fuel_efficiency
  end
end

class Auto < MovingVehicle
  def initialize(tire_array)
    # 4 tires are various tire pressures
    super(50, 25.0)
    @tires = tire_array
  end
end

class Motorcycle < MovingVehicle
  def initialize(tire_array)
    # 2 tires are various tire pressures
    super(80, 8.0)
    @tires = tire_array
  end
end

class Catamaran < SeaCraft
  attr_reader :propeller_count, :hull_count
  
  def initialize(num_propellers, num_hulls, km_traveled_per_liter, liters_of_fuel_capacity)
    # ... code omitted ...
  end

end

module WheeledVehicle
  def tire_pressure(tire_index)
    @tires[tire_index]
  end

  def inflate_tire(tire_index, pressure)
    @tires[tire_index] = pressure
  end
end

class SeaCraft < MovingVehicle
  # code ommitted

  def range
    super + 10
  end
end