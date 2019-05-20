class Person
  attr_accessor :first_name, :last_name
  
  def initialize(name)
    parse_full_name(name)
  end

  def name
    "#{@first_name} #{last_name}".strip
  end

  def name=(name)
    parse_full_name(name)
  end

  def to_s
    name
  end

  private

  def parse_full_name(full_name)
    split_name = full_name.split
    @first_name = split_name[0]
    @last_name = split_name.size > 1 ? split_name[1] : ''
  end

end

# bob = Person.new('Robert')
# p bob.name
# p bob.first_name
# p bob.last_name
# bob.last_name = 'Smith'
# p bob.name

# bob.name = 'John Adams'
# p bob.first_name
# p bob.last_name

# bob = Person.new('Robert Smith')
# rob = Person.new('Robert Smith')

# p bob.name == rob.name

bob = Person.new('Robert Smith')
puts "The person's name is: #{bob}"