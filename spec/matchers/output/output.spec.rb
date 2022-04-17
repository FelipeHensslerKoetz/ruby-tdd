# frozen_string_literal: true

describe 'Output matchers' do
  it { expect { print 'Hello World' }.to output.to_stdout }
  it { expect { print 'Hello World' }.to output('Hello World').to_stdout }
  it { expect { print 'Hello World' }.to output(/Hello World/).to_stdout }

  it { expect { warn 'Hello World' }.to output.to_stderr }
  it { expect { warn 'Hello World' }.to output("Hello World\n").to_stderr }
  it { expect { warn 'Hello World' }.to output(/Hello World/).to_stderr }
end
