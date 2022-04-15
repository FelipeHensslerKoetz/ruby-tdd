# frozen_string_literal: true

require 'person'

describe 'Attributes Matchers' do
  let(:person) { Person.new }

  it 'have_attributes' do
    person.name = 'Felipe'
    person.age = 23
    expect(person).to have_attributes(name: starting_with('Felipe'), age: (be >= 18))
  end

  it 'have_attributes' do
    person.name = 'Universe'
    person.age = 42
    expect(person).to have_attributes(age: 42)
  end
end
