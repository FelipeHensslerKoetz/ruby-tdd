# frozen_string_literal: true

RSpec.describe [1, 7, 9], 'Collection matcher' do
  it { is_expected.to all((be_odd).and(be_an(Integer))) }
end
