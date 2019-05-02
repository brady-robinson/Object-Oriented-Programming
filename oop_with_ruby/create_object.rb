module Character
  def character(name)
    puts name
  end
end

class TheMatrix
  include Character
end

origins = TheMatrix.new
origins.character("neo")