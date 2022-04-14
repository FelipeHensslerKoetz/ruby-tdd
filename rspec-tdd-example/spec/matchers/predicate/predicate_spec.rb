# frozen_string_literal: true

describe 'Predicate matchers' do
  it 'odd' do
    expect(1).to be_odd
  end

  it 'even' do
    expect(2).to be_even
  end

  it 'empty' do
    expect([]).to be_empty
  end

  it 'nil' do 
    expect(nil).to be_nil
  end
end
