print 'Type some morse code here: '
morse_str = gets.chomp

def decode_char(morse_char)
  morse_dict = {
    'A' => '.-', 'B' => '-...', 'C' => '-.-.',
    'D' => '-..', 'E' => '.', 'F' => '..-.',
    'G' => '--.', 'H' => '....', 'I' => '..',
    'J' => '.---', 'K' => '-.-', 'L' => '.-..',
    'M' => '--', 'N' => '-.', 'O' => '---',
    'P' => '.--.', 'Q' => '--.-', 'R' => '.-.',
    'S' => '...', 'T' => '-', 'U' => '..-',
    'V' => '...-', 'W' => '.--', 'X' => '-..-',
    'Y' => '-.--', 'Z' => '--..'
  }

  morse_dict.key(morse_char) || ' '
end

puts "Your decoded message is: #{decode_char(morse_str)}"
