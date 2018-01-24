class Book
	def initialize(title="generic title")
		@title=title
	end

	def title=(title)
		@title=capitalize_title(title)
	end

	def title
		@title
	end

	@@articles = %w(the a an);
	@@conjunctions = %w(and or but);
	@@prepositions = %w(in over under of);

	def capitalize_title(title)
		words = title.split(" ");
		words.each do |word|
			if (@@articles.include?(word.to_s) || @@conjunctions.include?(word.to_s) || @@prepositions.include?(word.to_s))
			
			else
				word.capitalize!
			end
		end

		words[0].capitalize!
		words.join(" ");
	end

end

