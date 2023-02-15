require 'rspec'
require './lib/student'
require './lib/course'
require './lib/gradebook'

RSpec.describe Gradebook do
  it 'exists' do
    gradebook = Gradebook.new("Mr. Nelson")
    expect(gradebook).to be_a(Gradebook)
  end

  it 'has attributes instructor and courses' do
    gradebook = Gradebook.new("Mr. Nelson")
    expect(gradebook.instructor).to eq("Mr. Nelson")
    expect(gradebook.courses).to eq([])
  end

  it 'add courses to @courses array' do
    gradebook = Gradebook.new("Mr. Nelson")
    course1 = Course.new("Calculus", 2)
    gradebook.add_course(course1)
    expect(gradebook.courses).to eq([course1])
  end

  it 'create hash with key as Course and value as array of Student objects' do
    gradebook = Gradebook.new("Mr. Nelson")
    course1 = Course.new("Calculus", 2)
    list_students = ({Calculus: "Bob", Science: "Jim"})
    expect(gradebook.list_all_students).to eq({Calculus: "Bob", Science: "Jim"})
  end

  it 'create an array of Student objects' do
    student1 = Student.new({name: "Morgan", age: 21}) 
    student2 = Student.new({name: "Jeff", age: 37}) 
    student3 = Student.new({name: "Jill", age: 19}) 

  end
end