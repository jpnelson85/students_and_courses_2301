require 'rspec'
require './lib/student'

RSpec.describe Student do
  it 'exists' do
    student = Student.new({name: "Morgan", age: 21}) 
    expect(student).to be_a(Student)
  end

  it 'student name Morgan' do
    student = Student.new({name: "Morgan", age: 21}) 
    expect(student.name).to eq("Morgan")
  end

  it 'student age is 21' do
    student = Student.new({name: "Morgan", age: 21}) 
    expect(student.age).to eq(21)
  end

  it 'scores attribute equals empty array' do
    student = Student.new({name: "Morgan", age: 21}) 
    expect(student.scores).to eq([])
  end

  it 'add scores' do
    student = Student.new({name: "Morgan", age: 21}) 
    student.log_score(89)
    student.log_score(78)
    expect(student.scores).to eq([89, 78])
  end

  it 'average of grades' do
    student = Student.new({name: "Morgan", age: 21}) 
    student.log_score(89)
    student.log_score(78)
    expect(student.average([89, 78])).to eq(83.5)
  end
end