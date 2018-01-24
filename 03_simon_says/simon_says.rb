#write your code here
def echo string
	string
end

def shout string
	string.upcase
end

def repeat(string, number=2)
	repeatedString =""
	number.times {  repeatedString += " " + string }

	repeatedString.strip
end

def start_of_word (string, index)
	string.slice(0,index)
end

def first_word(string)
	string.split(" ")[0]
end

def titleize2(string)
	array = string.downcase.split(" ")
	result_string = "";
	array.each { |item|
		if (item.length > 4 || item == array[0] || item == "kwai")
			item[0] = item[0].upcase
		end	
		result_string += item + " "
	}

	result_string.strip
end

def titleize(string)
	words = string.downcase.split(" ").map do |item|
		if %w(and over the or).include?(item)
			item
		else
			item = item.capitalize
			puts "in!"
		end

		item	
	end
	words[0] = words[0].capitalize
	words.join(" ")
end