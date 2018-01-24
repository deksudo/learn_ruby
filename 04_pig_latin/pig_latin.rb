#write your code here
$vovels = %w(a e i o u)
$consonants = %w(b c d f g h j k l m n p q r s t v w x y z)
$phonemes = %w(qu)

def translate string
	words = string.split(" ")
	words = words.map do |word|
		
		while (!$vovels.include?(word[0])) do
			if $phonemes.include?(word[0,2]) #start from the longest units
				2.times{word = first_letter_to_end word}			
			elsif $consonants.include?(word[0])
				word = first_letter_to_end word
			else
				break				
			end
		end
		word += "ay"
		word
	end
	words.join(" ")	
end

def first_letter_to_end word
	word += word[0]
	word = word[1..-1]	
	word
end

puts translate gets.chop