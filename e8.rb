# Write a method that takes a String of digits, and returns the
# appropriate number as an integer. You may not use any of the methods mentioned
# above.

# add the ability to check the sign of the number
require 'pry'
DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
}

def string_to_signed_integer(str)
  # binding.pry
  if str[0] == "-"
    -string_to_integer(str[1..-1])
  elsif str[0]  == "+"
    +string_to_integer(str[1..-1])
  else
    string_to_integer(str[0..-1])
  end
end

def string_to_integer(str)
  digi = str.chars.map { |number| DIGITS[number] }
  val = 0
  digi.each { |dig| val = 10 * val + dig  }
  val
end


p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100
