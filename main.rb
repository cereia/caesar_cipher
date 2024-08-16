# frozen_string_literal: true

require_relative 'lib/caesar_cipher'

# test cases
puts caesar_cipher('What a string!', 5)
# => 'Bmfy f xywnsl!'

puts caesar_cipher('Amazing day!', -5)
# => 'Vhvudib yvt!'

puts caesar_cipher('Amazing day!', 7)
# => 'Hthgpun khf!'
