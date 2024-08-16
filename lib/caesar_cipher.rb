# frozen_string_literal: true

# charcter.ord returns character's ascii value
# number.chr returns the ascii with that value

# a-z: 97 to 122
# A-Z: 65 to 90

# 3 conditions:
# check if between 97 and 122 for lowercase characters
# check if between 65 and 90 for capital characters
# everything outside of that range is punctuation and is not changed

def caesar_cipher(string, shift_factor)
  new_code_array = []
  string.split('').map(&:ord).each do |code|
    if code.between?(65, 90) || code.between?(97, 122)
      new_code_array.push(encoder(code, shift_factor))
    else
      new_code_array.push(code)
    end
  end
  new_code_array.map(&:chr).join('')
end

# takes care of shifting the characters to their new ascii value
def encoder(char, shift)
  lower = char.between?(65, 90) ? 65 : 97
  upper = char.between?(65, 90) ? 90 : 122
  if char + shift < lower
    upper + char + shift - (lower - 1)
  elsif char + shift > upper
    lower + char + shift - (upper + 1)
  else
    char + shift
  end
end
