class Person
  attr_accessor :name, :age

  def initialize(name, age)
    @name = name
    @age = age
  end

  def >(other_person)
    age > other_person.age
  end

  def <(other_person)
    age < other_person.age
  end

  def not_yet_18?
    age < 18
  end
end

# bob = Person.new("Bob", 49)
# kim = Person.new("Kim", 33)

# puts "Bob is older than Kim" if bob > kim
# puts "Kim is younger than Bob" if kim < bob



class Team
  attr_accessor :name, :members

  def initialize(name)
    @name = name
    @members = []
  end

  def <<(person)
    return if person.not_yet_18?
    members.push person
  end

  def +(other_team)
    temp_team = Team.new("Temporary Team")
    temp_team.members = members + other_team.members
    temp_team
  end

  def [](idx)
    members[idx]
  end

  def []=(idx, obj)
    members[idx] = obj
  end
end

cowboys = Team.new("Dallas Cowboys")
cowboys << Person.new("Emmitt Smith", 46)
cowboys << Person.new("Troy Aikman", 48)
cowboys << Person.new("Michael Irvin", 49)

niners = Team.new("San Francisco 49ers")
niners << Person.new("Joe Montana", 59)
niners << Person.new("Jerry Rice", 52)
niners << Person.new("Deion Sanders", 47)

dream_team = cowboys + niners
# puts dream_team.inspect

p cowboys.members
p cowboys[1]
p cowboys[3] = Person.new("JJ", 72)
p cowboys[3]
