class Box
  BOX_COMPANY = "123 Box Company"
  BOXWEIGHT = 10

  def initialize(h,w)
    @height, @weight = h,w
  end

  def getArea
    @height * @weight
  end
end

box = Box.new(10, 20)
a = box.getArea

puts "The area of the box is #{a}"
puts "The box comes from #{Box::BOX_COMPANY}"
puts "The box weighs #{Box::BOXWEIGHT}"