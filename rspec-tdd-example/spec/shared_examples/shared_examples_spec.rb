# frozen_string_literal: true

require 'person'

shared_examples 'status' do |feeling|
  it "##{feeling}" do 
    person.send("#{feeling}!")
    expect(person.status).to eq("Feeling #{feeling}!")
  end
end 

RSpec.describe 'Person' do
  subject(:person) { Person.new }

  it '#happy!' do
    person.happy!
    expect(person.status).to eq('Feeling happy!')
  end

  it '#sad!' do
    person.sad!
    expect(person.status).to eq('Feeling sad!')
  end

  it_behaves_like 'status', :happy
  it_behaves_like 'status', :sad

  include_examples 'status', :happy
  include_examples 'status', :sad

  it_should_behave_like 'status', :happy
  it_should_behave_like 'status', :sad
end
