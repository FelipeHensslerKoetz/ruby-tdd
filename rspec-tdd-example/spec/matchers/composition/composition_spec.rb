# frozen_string_literal: true

RSpec.describe 'Ruby on Rails', 'Composition Matchers' do
  it { is_expected.to start_with('Ruby').and end_with('Rails') }
  it { is_expected.to start_with('Ruby').or end_with('Rails') }
end
