class Greeting
  def greet(message)
    puts message
  end
end

class Hello < Greeting
  def hi
    greet("Hello")
  end
end

class Goodbye < Greeting
  def bye
    greet("Goodbye")
  end
end

greet_1 = Hello.new
greet_1.greet("How are you?")
greet_1.hi
Hello.new.hi