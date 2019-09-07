class Student
  attr_accessor :name
  attr_writer :grade

  def initialize(n,g)
    @name = n
    @grade = g
  end

  protected

  def grade
    @grade
  end

  public

  def better_grade_than?(name)
    if @grade > name.grade
      true
    else
      false
    end
  end
end

joe = Student.new("Joe", 90)
steve = Student.new("Steve", 87)

puts "Well done!" if joe.better_grade_than?(steve)
