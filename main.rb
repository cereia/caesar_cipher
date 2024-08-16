# frozen_string_literal: true

require_relative 'lib/caesar_cipher'

# test cases
puts "What a string! + 5 => #{caesar_cipher('What a string!', 5)}"
# => 'Bmfy f xywnsl!'

puts "Amazing day! - 5 => #{caesar_cipher('Amazing day!', -5)}"
# => 'Vhvudib yvt!'

puts "Amazing day! + 7 => #{caesar_cipher('Amazing day!', 7)}"
# => 'Hthgpun khf!'
