require 'rspec'
require './lib/student'

RSpec.describe Student do
  it 'exists' do
    student = Student.new({name: "Morgan", age: 21}) 
    expect(student).to be_a(Student)
  end
end