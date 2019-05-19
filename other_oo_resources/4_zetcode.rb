class Being
  def initialize
    puts "Being class created"
  end
end

class Living < Being; end
class Mammal < Living; end

class Human < Mammal
  def initialize
    super
    puts "Human class created"
  end
end

puts Human.ancestors