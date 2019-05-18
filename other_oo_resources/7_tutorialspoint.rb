class Box
  attr_accessor :width, :height

  def initialize(w,h)
    @width, @height = w,h
  end 

  def getArea
    @width * @height
  end
end

box1 = Box.new(10, 30)

box2 = Box.allocate

a = box1.getArea
puts "The area is #{a}"

a = box2.getArea
puts "The area is #{a}"