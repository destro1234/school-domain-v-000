class School

  attr_accessor :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student, grade)
    @roster[grade] = []
      if @roster[grade]
        @roster[grade]<< student
    else
      @roster[grade] << student
      add_student(student, grade)
    end
  end
end
