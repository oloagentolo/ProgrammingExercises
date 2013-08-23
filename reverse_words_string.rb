# Exercise 2: reverse the order of words in a string.
# For example, the string "The quick brown fox jumped over the lazy dog!" should be reversed to
# "dog! lazy the over jumped fox brown quick The"

def reverse_words(input_string)
  tokens = input_string.split(' ')
  swap_words(tokens)
end

def swap_words(tokens)
  last = tokens.size - 1
  stop_count = tokens.size / 2

  for i in 0...stop_count
    temp = tokens[i]
    tokens[i] = tokens[last - i]
    tokens[last - i] = temp
  end

  tokens.join(' ')
end
