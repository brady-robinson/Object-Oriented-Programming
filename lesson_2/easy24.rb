class Transform
  attr_accessor :my_data

  def initialize(input)
    @my_data = input
  end

  def uppercase
    @my_data.upcase
  end

  def self.lowercase(input)
    input.downcase
  end
end


my_data = Transform.new('abc')
puts my_data.uppercase
puts Transform.lowercase('XYZ')