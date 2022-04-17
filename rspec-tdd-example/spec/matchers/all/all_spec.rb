# frozen_string_literal: true

# rspec -t type:array (runs tests with the array type flag)
RSpec.describe [1, 7, 9], 'Collection matcher', type: 'array' do
  it { is_expected.to all((be_odd).and(be_an(Integer))) }
end
