class Student
  attr_reader :first_name, :last_name, :grades

  def initialize(student_info)
    @first_name = student_info[:first_name]
    @last_name = student_info[:last_name]
    @grades = student_info[:grades]
  end

  def average(@grades)

    sum = 0.0
    @grades.each do |grade|
      sum += grade
    end

    sum / @grades.length
  end
end
