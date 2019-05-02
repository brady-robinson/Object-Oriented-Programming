class MyCar
  attr_accessor :color
  attr_reader :year
  @@gas_milage = 35

  def initialize(year, model, color)
    @year = year
    @model = model
    @color = color
    @current_speed = 0
  end

  def self.gas_mileage(gallons, miles)
    "#{miles / gallons} miles per gallon of gas."
  end

  def speed_up(number)
    @current_speed += number
    puts "You push the gas and accelerate #{number} mph."
  end

  def brake(number)
    @current_speed -= number
    puts "You push the brake and decelerate #{number} mph."
  end

  def current_speed
    puts "You are not going #{@current_speed} mph."
  end

  def shut_down
    @current_speed = 0
    puts "Let's park this car!"
  end

  def info
    puts "The #{@model} is #{@year} and #{@color}."
  end

  def spray_paint(color)
    self.color = color
    puts "Your new #{color} paint job looks great!"
  end

  def to_s
    "Your #{year} #{model} is #{color} and gets #{MyCar.gas_mileage(12, 351)}"
  end
end

lumina = MyCar.new(1997, 'chevy lumina', 'white')
# lumina.speed_up(20)
# lumina.current_speed
# lumina.speed_up(20)
# lumina.current_speed
# lumina.brake(20)
# lumina.current_speed
# lumina.brake(20)
# lumina.current_speed
# lumina.shut_down
# lumina.current_speed
# lumina.color = "blue"
# puts lumina.color
# lumina.spray_paint('red')
puts lumina
