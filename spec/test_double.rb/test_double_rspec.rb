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

  it 'as_null_object' do
    user = double('User').as_null_object
    allow(user).to receive_messages(name: 'Jack', password: 'secret')
    allow(user).to receive(:age).and_return(42)

    puts user.name
    puts user.password
    puts user.age
    puts user.abc # ignored by as_null_object
  end
end
