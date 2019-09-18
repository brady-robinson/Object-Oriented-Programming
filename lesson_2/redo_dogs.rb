class Animal
  def speak
    "bark!"
  end

  def swim
    "swimming!"
  end

  def run
    'running!'
  end

  def jump
    'jumping!'
  end
end

class Dog < Animal
  def fetch
    'fetching!'
  end
end

class Cat < Animal
end
