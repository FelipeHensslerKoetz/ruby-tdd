# frozen_string_literal: true

RSpec.describe 'Satisfy matcher' do
  it { expect(10).to satisfy('Even value') { |x| x % 2 == 0 } }
  it { expect(9).to satisfy('Multiple of 3') { |x| x % 3 == 0 } }
end
