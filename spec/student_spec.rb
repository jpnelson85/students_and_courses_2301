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
end