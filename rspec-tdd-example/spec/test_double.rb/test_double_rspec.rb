# frozen_string_literal: true

RSpec.describe 'Test Double' do
  it '--' do
    user = double('User')
    allow(user).to receive_messages(name: 'Jack', password: 'secret')
    allow(user).to receive(:age).and_return(42)

    puts user.name
    puts user.password
    puts user.age
  end
end
