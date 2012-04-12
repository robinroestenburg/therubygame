def morse_to_eng(morse)
  morse_alphabet = {'.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E', '..-.' => 'F', '--.' => 'G', '....' => 'H', '..' => 'I', '.---' => 'J', '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N', '---' => 'O', '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T', '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y', '--..' => 'Z'}
  morse.split(/\s{3}/).map { |morse_word| morse_word.split(/\s/).map { |morse_code| morse_alphabet[morse_code]  }.join }.join(" ")
end

describe 'morse_to_eng(morse)' do

  it 'translates individual morse codes' do
    morse_to_eng('.-').should == 'A'
    morse_to_eng('-...').should == 'B'
  end

  it 'translates morse words' do
    morse_to_eng('.- -...').should == 'AB'
  end

  it 'translates morse sentences' do
    morse_to_eng('.- -...   -... .-').should == 'AB BA'
  end

  it 'solved the problem' do
    morse_to_eng('.... . .-.. .--.   -- .   --- ..- -   --- ..-.   - .... .. ...   .-- . .-.. .-..').should == 'HELP ME OUT OF THIS WELL'
  end
end

