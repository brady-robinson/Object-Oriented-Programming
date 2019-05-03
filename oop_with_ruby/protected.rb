class Animal
  def a_public_method
    "Will this work? " + self.a_protected_method
  end

  protected

  def a_protected_method
    "Yes, I'm protected!"
  end
end

mr_cat = Animal.new
p mr_cat.a_public_method
p mr_cat.a_protected_method