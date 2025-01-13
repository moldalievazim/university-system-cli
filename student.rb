class Student
  attr_accessor :name, :gpa

  def initialize(name, gpa)
    @name = name
    @gpa = gpa
  end

  def to_s
    "#{@name} with #{@gpa} GPA"
  end
end
