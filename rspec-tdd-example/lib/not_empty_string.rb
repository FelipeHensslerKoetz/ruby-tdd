# frozen_string_literal: true

class NotEmptyString < String
  def initialize
    super('Not an ampty string...')
  end
end
