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
  code_array = string.split('').map { |char| char.ord }
  for code in code_array
    if code.between?(65, 90)
      new_code_array.push(encoder(code, shift_factor, 65, 90))
    elsif code.between?(97, 122)
      new_code_array.push(encoder(code, shift_factor, 97, 122))
    else
      new_code_array.push(code)
    end
  end
  new_string = new_code_array.map { |code| code.chr }.join('')
  new_string
end

# takes care of shifting the characters to their new ascii value
def encoder(char, shift, lower, upper)
  if char + shift < lower
    upper + char + shift - (lower - 1)
  elsif char + shift > upper
    lower + char + shift - (upper + 1)
  else 
    char + shift
  end
end

# test cases
puts caesar_cipher("What a string!", 5)
#"Bmfy f xywnsl!"

puts caesar_cipher("Amazing day!", -5)
# "Vhvudib yvt!"

puts caesar_cipher("Amazing day!", 7)
# Hthgpun khf!