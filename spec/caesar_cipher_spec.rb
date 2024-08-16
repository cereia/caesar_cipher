# frozen_string_literal: true

require_relative '../lib/caesar_cipher'

describe '#caesar_cipher' do
  xit ''
end

describe '#encoder' do
  # normal behavior where no wrapping is needed

  # wrapping is necessary
  context 'original number is between 65 and 90' do
    xit 'returns a number less than 65 after shifting' do
    end

    xit 'returns a number greater than 90 after shifting' do
    end

    xit 'returns a number between 65 and 90 after shifting' do
    end
  end

  context 'original number is between 97 and 122' do
    xit 'returns a number less than 97 after shifting' do
    end

    xit 'returns a number greater than 122 after shifting' do
    end

    xit 'returns a number between 97 and 122 after shifting' do
    end
  end
end
