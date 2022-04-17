# frozen_string_literal: true

require 'counter'

RSpec.describe 'Change matcher' do
  it { expect { Counter.increase }.to change { Counter.qtd } }
  it { expect { Counter.increase }.to change { Counter.qtd }.by(1) }
  it { expect { Counter.increase }.to change { Counter.qtd }.from(2).to(3) }
end
