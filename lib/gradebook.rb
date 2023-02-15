class Gradebook
  attr_reader   :instructor
              
  attr_accessor :courses

  def initialize(instructor)
    @instructor = instructor
    @courses = []
  end

  def add_course(course)
    @courses << course
  end

  def list_all_students
      
  end

  def students_below(threshold)

  end

end
