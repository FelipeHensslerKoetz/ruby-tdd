# frozen_string_literal: true

require 'not_empty_string'

describe String do
  describe NotEmptyString do
    it 'string is not empty' do
      expect(subject).to eq('Not an ampty string...')
    end
  end
end
