class Person
  attr_accessor :first_name, :last_name
  attr_reader :name

  def initialize(fn, ln="")
    @first_name = fn
    @last_name = ln
  end

  def name
    "#{@first_name} #{@last_name}".strip
  end

  def name=(full_name)
    if full_name.split.size > 1
      @first_name = full_name.split.first
      @last_name = full_name.split.last
    else
      @first_name = full_name
    end
  end

  def to_s
    name
  end
end

bob = Person.new('Robert Smith')
rob = Person.new('Robert Smith')

puts bob.name == rob.name

# puts bob.name
# puts bob.first_name
# puts bob.last_name             
# bob.last_name = 'Smith'
# puts bob.name                  

# bob.name = "John Adams"
# puts bob.first_name            
# puts bob.last_name