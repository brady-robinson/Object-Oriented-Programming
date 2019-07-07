class Fruit
  def initialize(name)
    name = name
  end
end

class Pizza
  def initialize(name)
    @name = name
  end
end

# The class Pizza has an instnace variable. We know this because
# of the @ symbol before the variable name is assigned.

hot_pizza = Pizza.new("cheese")
orange = Fruit.new("apple")

def has_instance_variables?(instance)
  if instance.instance_variables != []
    puts "Class #{instance} has #{instance.instance_variables}."
  else
    puts "Class #{instance} does not have any instance variables."
  end
end

has_instance_variables?(hot_pizza)
has_instance_variables?(orange)