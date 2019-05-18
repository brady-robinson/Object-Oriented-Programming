class Box
  def initialize(w,h)
    @width, @height = w,h
  end

  def getArea
    @width * @height
  end
end

class BigBox < Box

  def getArea
    @area = @width * @height
    puts "BigBox area is #{@area}"
  end

  # def printArea
  #   @area = @width * @height
  #   puts "Big box area is : #{@area}"
  # end
end

box = BigBox.new(20, 30)
box.getArea
