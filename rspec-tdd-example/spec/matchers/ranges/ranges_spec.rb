# frozen_string_literal: true

RSpec.describe (1..10), 'Range Matchers' do
  it '#cover' do
    expect(subject).to cover(8)
    expect(subject).not_to cover(11)
  end
end
