require 'rspec'
require './lib/student'
require './lib/course'

RSpec.describe Gradebook do
  it 'exists' do
    gradebook = Gradebook.new("Mr. Nelson")
  end
end