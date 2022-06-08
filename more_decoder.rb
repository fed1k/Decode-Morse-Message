def decode_char(char)
  morse_code = {
    '.-' => 'a', '-...' => 'b', '-.-.' => 'c', '-..' => 'd', '.' => 'e',
    '..-.' => 'f', '--.' => 'g', '....' => 'h', '..' => 'i', '.---' => 'j',
    '-.-' => 'k', '.-..' => 'l', '--' => 'm', '-.' => 'n', '---' => 'o',
    '.--.' => 'p', '--.-' => 'q', '.-.' => 'r', '...' => 's', '-' => 't',
    '..-' => 'u', '...-' => 'v', '.--' => 'w', '-..-' => 'x', '-.--' => 'y',
    '--..' => 'z'
  }
  morse_code[char].upcase
end

def decode_word(char)
  new_array = char.split
  empty_string = ''
  new_array.each do |i|
    empty_string += decode_char(i)
  end
  empty_string
end

def decode(char)
  new_array = char.split('  ')
  new_string = ''
  new_array.each do |i|
    new_string << "#{decode_word(i)} "
  end
  new_string
end

# print decode_char(".-")
# print decode_word('-- -.--')
# print decode('-- -.--  -. .- -- .')
print decode('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
