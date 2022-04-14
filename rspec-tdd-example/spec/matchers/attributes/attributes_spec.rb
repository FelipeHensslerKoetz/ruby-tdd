# frozen_string_literal: true

require 'person'

describe 'Attributes Matchers' do
  it 'have_attributes' do
    person = Person.new
    person.name = 'Felipe'
    person.age = 23
    expect(person).to have_attributes(name: starting_with('Felipe'), age: (be >= 18))
  end
end
