class AngryCat
  def initialize(age,name)
    @age = age
    @name = name
  end

  def age
    puts @age
  end

  def name
    puts @name
  end

  def hiss
    puts "Hissss!!!"
  end
end

maximilian = AngryCat.new(12,"Maximilian")
theodore = AngryCat.new(5,"Theodore")
maximilian.age
maximilian.name
theodore.name
theodore.age