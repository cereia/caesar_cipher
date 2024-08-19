# frozen_string_literal: true

require_relative '../lib/caesar_cipher'

describe CaesarCipher do
  subject(:cipher) { described_class.new }

  describe '#caesar_cipher' do
    it 'works with small positive shifts' do
      expect(cipher.caesar_cipher('What a string!', 5)).to eql('Bmfy f xywnsl!')
    end

    it 'works with small negative shifts' do
      expect(cipher.caesar_cipher('Amazing day!', - 5)).to eql('Vhvudib yvt!')
    end

    it 'works with large positive shifts' do
      expect(cipher.caesar_cipher('Hello World!', 32)).to eql('Nkrru Cuxrj!')
    end

    xit 'works with large negative shifts' do
      expect(cipher.caesar_cipher('No punctutation here', -43)).to eql('Wx ydwlcdcjcrxw qnan')
    end
  end
end
