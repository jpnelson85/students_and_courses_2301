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

  def average(scores)
    ave = scores.sum.to_f / scores.size.to_f
    ave
  end
end
