# frozen_string_literal: true

RSpec.describe 'be_within' do
  it { expect(12.5).to be_within(0.5).of(12) }
  it { expect(11.5).to be_within(0.5).of(12) }
end
