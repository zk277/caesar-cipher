def caesar_cipher (string, shift_factor)
=begin
divide string into letters (array)
turn letters into numbers
  A=65
  Z=90
  a=97
  z=122
divide into lowercase and uppercase
add shift factor to numbers
if number higher than max, take away max
if not a letter, keep the same (!,.)
turn array to string
=end

array = string.chars
number_array = array.collect{|letter| letter.ord}

shift_array = number_array.collect do |number|
    if (65..90).include?(number)
      upcase(number, shift_factor)
    elsif (97..122).include?(number)
      downcase(number, shift_factor)
    else
      number
    end
end

new_array = shift_array.collect{|number| number.chr}
result = new_array.join('')

puts result

end

def upcase(num, shift_factor)
  if (num + shift_factor) < 91
    num = num + shift_factor
  else
    num = (num + shift_factor) - 26
  end
end

def downcase(num, shift_factor)
  if (num + shift_factor) < 123
    num = num + shift_factor
  else
    num = (num + shift_factor) - 26
  end
end

puts "Text to be encrypted: "
string = gets.strip

puts "Set the shift factor: "
shift_factor = gets.strip.to_i

puts caesar_cipher(string, shift_factor)
