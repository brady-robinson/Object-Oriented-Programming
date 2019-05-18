class Box
  @@count = 0

  def initialize(w,h)
    @height = h 
    @width = w

    @@count += 1
  end

  def self.printCount()
    puts "Box count is : #{@@count}"
  end

  def getArea
    @width * @height
  end

  def to_s
    "(w:#{@width},h:#{height})"
  end
end

box = Box.new(10,20)
puts "String representation of box is : #{box}"

# box2 = Box.new(30, 40)

# Box.printCount()

# a = box.getArea()
# puts "Area of the box is : #{a}"