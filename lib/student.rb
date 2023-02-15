class Student
  attr_reader   :name,
                :age,
                :scores
  attr_accessor 

  def initialize(info) 
    @name = info[:name]
    @age = info[:age]
    @scores = []
  end

  def log_score(score)
    @scores << score
  end

  def grade(scores)
    average = scores.sum / scores.length
    average
  end
end
