# Programming interviews exercises: problem 1
#
# Write a program that takes a string input from the user and performs capitalization of the words in
# accordance with the following rules:
#
#  a) Always capitalize the first word
#  b) Always capitalize the last word
#  c) Lowercase the following words unless (a) or (b): a, the, to, at, in, with, and, but, or
#  d) Capitalize all words not in (c)
#  e) Empty strings don't qualify as words



def capitalize_string(input)
	if input.empty?
		raise 'Oops! You did not enter anything.'
	else
		capitalize_words(input.downcase.split(' '))
	end
end

def capitalize_words(words)
	words.first.capitalize!
	words.last.capitalize!
	capitalize_words_between_first_and_last(words) if words.size > 2

	words.join(' ')
end

def capitalize_words_between_first_and_last(words)
	lowercase_words = %w[a the to at in with and but or]

	for i in 1..words.size - 2
		words[i].capitalize! unless lowercase_words.include?(words[i])
	end
end