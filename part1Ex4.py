#list of words
words = ["hello", "world", "python", "code"]

# 1.list of word lengths 
lengths = [len(word) for word in words]
print("Word lengths:", lengths)

# 2.words longer than 4 characters
long_words = [word for word in words if len(word) > 4]
print("Words longer than 4 characters:", long_words)

# 3. dictionary: {word: length}
word_length_dict = {word: len(word) for word in words}
print("Word to length dictionary:", word_length_dict)
