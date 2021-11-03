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

def decode_word(morse_word)
  word = ''
  morse_word.split.each do |char|
    word += decode_char(char)
  end
  word
end

def decode_msg(morse_msg)
  msg = []
  morse_msg.split('   ').each do |word|
    msg.push(decode_word(word))
  end
  msg.join(' ')
end

puts "Your decoded message is: #{decode_msg(morse_str)}"
