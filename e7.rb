# Write a method that takes a String of digits, and returns the
# appropriate number as an integer. You may not use any of the methods mentioned
# above. (can't use convenience methods such as .to_i)
DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
}


def string_to_integer(str)
  digi = str.chars.map { |number| DIGITS[number] }

  val = 0
  digi.each { |dig| val = 10 * val + dig  }
  val
end

p string_to_integer('4321') == 4321
p string_to_integer('570') == 570
