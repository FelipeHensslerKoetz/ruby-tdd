# frozen_string_literal: false

describe 'Equality matchers' do
  it '#equal - test if the object is the same' do
    x = 'ruby'
    y = 'ruby'
    expect(x).not_to equal(y)
    expect(x).to equal(x)
  end

  it '#be - test if the object is the same' do
    x = 'ruby'
    y = 'ruby'
    expect(x).not_to be(y)
    expect(y).to be(y)
  end

  it 'eql - test if the value' do
    x = 'ruby'
    y = 'ruby'
    expect(x).to eql(y)
  end

  it 'eq - test if the value' do
    x = 'ruby'
    y = 'ruby'
    expect(x).to eq(y)
  end
end
