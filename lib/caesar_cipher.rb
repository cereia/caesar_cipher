# frozen_string_literal: true

# charcter.ord returns character's ascii value
# number.chr returns the ascii with that value

# a-z: 97 to 122
# A-Z: 65 to 90

# 3 conditions:
# check if between 97 and 122 for lowercase characters
# check if between 65 and 90 for capital characters
# everything outside of that range is punctuation and is not changed
class CaesarCipher
  def caesar_cipher(string, shift_factor)
    encoded = []

    string.each_char do |char|
      code = char.ord
      code.between?(65, 90) || code.between?(97, 122) ? encoded.push(encoder(code, shift_factor)) : encoded.push(code)
    end

    encoded.map(&:chr).join('')
  end

  # takes care of shifting the character to their new ascii code value
  def encoder(code, shift)
    lower_limit = code < 91 ? 65 : 97
    if code.between?(65, 90) || code.between?(97, 122)
      # add the remainder to the lower limit of the alphabet to get the new value
      (((code - lower_limit) + shift) % 26) + lower_limit
    else
      code + shift
    end
  end
end
