class Box
  def initialize(w,h)
    @width, @height = w, h
  end

  def printWidth
    @width
  end

  def printHeight
    @height
  end

  def setWidth=(value)
    @width = value
  end

  def setHeight=(value)
    @height = value
  end
end

box = Box.new(10, 20)

box.setWidth = 30
box.setHeight = 20


x = box.printWidth
y = box.printHeight

puts "Width of the box is: #{x}"
puts "Height of the box is: #{y}"