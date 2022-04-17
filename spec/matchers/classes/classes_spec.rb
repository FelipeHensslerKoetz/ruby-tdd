# frozen_string_literal: true

describe 'Classes Matchers' do
  it 'be_instance_of' do
    expect(1).to be_instance_of(Integer)
  end

  it 'be_kind_of' do
    expect(1).to be_kind_of(Object)
  end

  it 'be_a' do
    expect([]).to be_a(Array)
  end

  it 'be_an' do
    expect([]).to be_an(Object)
  end

  it 'respond_to' do
    expect([]).to respond_to(:size)
  end
end
