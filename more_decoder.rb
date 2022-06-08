def decode_char(char)
    morseCode = {
        '.-' => 'a', '-...' => 'b', '-.-.' => 'c', '-..' => 'd', '.' => 'e', '..-.' => 'f', '--.' => 'g', '....' => 'h', '..' => 'i', '.---' => 'j', '-.-' => 'k', '.-..' => 'l', '--' => 'm', '-.' => 'n', '---' => 'o', '.--.' => 'p', '--.-' => 'q', '.-.' => 'r', '...' => 's', '-' => 't', '..-' => 'u', '...-' => 'v', '.--' => 'w', '-..-' => 'x', '-.--' => 'y', '--..' => 'z', '.-.-.-' => '.'
    }
    return morseCode[char]
end

def decode_word (char)
    newArray = char.split(' ')
    emptyString = ''
    newArray.each do |i|
        emptyString += decode_char(i)
    end
    return emptyString
end