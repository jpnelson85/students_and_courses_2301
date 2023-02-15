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
    
  end
end