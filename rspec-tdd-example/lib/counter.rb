# frozen_string_literal: true

class Counter
  @qtd = 0

  class << self
    attr_reader :qtd
  end

  def self.increase
    @qtd += 1
  end
end
