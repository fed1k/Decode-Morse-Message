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

print decode_word('-- -.--  -. .- -- .')

print decode_word('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
