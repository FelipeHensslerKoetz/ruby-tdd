# frozen_string_literal: true

RSpec::Matchers.define :be_a_multiple_of do |expected|
  match do |actual|
    actual % expected == 0
  end

  description do
    "be a multiple of #{expected}"
  end

  failure_message do |actual|
    "expected that #{actual} would be a mutiple of #{expected}"
  end
end

RSpec.describe 18, 'Custom Matcher' do
  it { expect(18).to be_a_multiple_of(3) }
  # it { expect(18).to be_a_multiple_of(5) }
end
