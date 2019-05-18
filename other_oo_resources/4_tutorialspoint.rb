class Box
  def initialize(w,h)
    @width,@height = w, h
  end

  def +(other)
    Box.new(@width + other.width, @height + other.height)
  end 

  def -@
    Box.new(-@width, -@height)
  end

  def *(scalar)
    Box.new(@width*scalar, @height*scalar)
  end 
end