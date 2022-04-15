# frozen_string_literal: true

RSpec.describe (1..10), 'Range Matchers' do
  it '#cover' do
    is_expected.to cover(8)
    expect(subject).not_to cover(11)
  end

  it { is_expected.to cover(1) }
end
