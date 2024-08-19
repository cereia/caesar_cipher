# frozen_string_literal: true

# a-z: 97 to 122
# A-Z: 65 to 90

# 3 conditions:
# check if between 97 and 122 for lowercase characters
# check if between 65 and 90 for capital characters
# everything outside of that range is either punctuation or some other symbol and is not changed
class CaesarCipher
  def caesar_cipher(string, shift_factor, encoded = [])
    string.each_char do |char|
      code = char.ord
      if code.between?(65, 90) || code.between?(97, 122)
        lower_limit = code < 91 ? 65 : 97
        # add the remainder to the lower limit of the alphabet to get the new value
        encoded << (((code - lower_limit) + shift_factor) % 26) + lower_limit
      else
        encoded << code
      end
    end

    encoded.map(&:chr).join('')
  end
end
