# frozen_string_literal: true

require_relative 'lib/caesar_cipher'

# test cases
cipher = CaesarCipher.new
puts "What a string! + 5 => #{cipher.caesar_cipher('What a string!', 5) == 'Bmfy f xywnsl!'}"
# => 'Bmfy f xywnsl!'

puts "Amazing day! - 5 => #{cipher.caesar_cipher('Amazing day!', - 5) == 'Vhvudib yvt!'}"
# => 'Vhvudib yvt!'

puts "Amazing day! + 7 => #{cipher.caesar_cipher('Amazing day!', 7) == 'Hthgpun khf!'} "
# => 'Hthgpun khf!'

puts "AMAZING DAY! + 5 => #{cipher.caesar_cipher('AMAZING DAY!', 5) == 'FRFENSL IFD!'}"
# => 'FRFENSL IFD!'

# puts "HAHAha oh well + 74 => #{cipher.caesar_cipher('HAHAha oh well', 26) == 'HAHAha oh well'}"
