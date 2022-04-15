# frozen_string_literal: true

RSpec::Matchers.define_negated_matcher :be_an_array_excluding, :include

RSpec.describe Array.new([1, 2, 3]), 'Arrays matchers' do
  it '#include' do
    expect(subject).to include(2)
    expect(subject).to include(2, 1)
  end

  it { is_expected.to be_an_array_excluding(4) }

  it '#match_array', :aggregate_failures do
    # expect(subject).to match_array([])
    # expect(subject).to match_array([42])
    expect(subject).to match_array([3, 2, 1])
    expect(subject).not_to match_array([3, 2])
  end

  it '#contain_exactly' do
    expect(subject).to contain_exactly(3, 2, 1)
    expect(subject).not_to contain_exactly(1)
  end
end
