# LOADING TEXT FILE AND COUNTING LINES


File.open("rubyprincess.txt").each { |line| puts line }

line_count = 0 
File.open("rubyprincess.txt").each { |line| line_count += 1 }
puts line_count  

# Answer will come out to be 0 => nil



text = ''                # text is a variable used here
line_count = 0
File.open("rubyprincess.txt").each do |line|
	line_count = 1
	text << line
end


puts #{line_count} lines" 


# Answer will be 0 lines => nil






# COUNTING CHARACTERS:


total_characters = text.length

puts "#{total_characters} characters"        # Answer will be 0 characters





# In the command prompt, if you run "rubyprincess.rb", 
# then you will be able to see how many lines and characters are in the "rubyprincess.txt" file.
# Answer is 10 lines, 515 characters.





# This is counting the characters w/o spaces:

total_characters_nospaces   =   text.gsub(/\s+/,'').length
puts   "#{total_character_nospace} characters excluding spaces"

# gsub = global substitution (search and replace)


# Answer will be 414 characters excluding spaces





# COUNTING WORDS: 


puts "You are a hero".scan(/\w/).join               # Answer will be "Youareahero"

puts "You are a hero".scan(/\w+/).join('-')         # Answer will be "You-are-a-hero"

puts "You are a hero".scan(/\w+/).length            # Answer will be 4



# SPLIT:

# The "split" apprach demonstrates a core tenet of Ruby.
# Split = Will split the whitespace (single or multiple characters of spaces, tabs, newlines, etc)
# "Split" literally breaks the string into parts. 





# TO SCAN AND SPLIT:

text = "You are such an awesome person."           
puts "Scan method: #{text.scan(/\w+/).length}"          # Answer will be 6
puts "Scan method: #{text.split.length}"                # Answer will be 6



# / / = The delimiters for a regular expression. It actually starts with \



# TO COUNT THE WORDS:

word_count = text.split.length
puts "#{word_count} words"


# Answer will be  10, 515 characters, 414 characters excluding spaces, 91 words.






# COUNTING SENTENCES: 

# Sentences end with full stops, question marks, and exclamation marks.



sentence_count = text.split(/\.|\?|!/).length
puts "#{sentence_count} sentences"


# | = Each | is treated separately (like a split). 




# COUNTING PARAGRAPHS: 

test = %q{ 
	Hi, how are you? 
	Where are you from?
	
	I'm from Ruby Land.
	And my dad is the King.
	
	Sadly, he was killed.
	Therefore, I will avenge his death. 
	No evil villain gets away with his crimes. 
}

puts test.split(/\n\n/).length        # Answer will be 3 => nil




paragraph_count = test.split(/\n\n/).length
puts "#{paragraph_count} paragraphs"






# CALCULATING AVERAGES:

puts "#{sentence_count / paragraph_count} sentences per paragraph (average)"

puts "#{word_count / sentence_count} words per sentence (average)"







# STOPWORDS:

# "Stopwords" are words that the computer isn't interested in (ex. are, that, or, it, etc)

# If you create a Stopwords variable, you can put all those words into that array (list).

stopwords = %w{the a by on for are with just but and to the my I has some is}


# Example: 

text = %q{I am princess Ruby from Ruby Land}
stopwords = %w{am from}

words = text.scan(/\w+/)                # Answer will be ["I", "am", "princess",.....]
keywords = words.select { |word| !stopwords.include?(word) }       # Answer will be ["I", "princess", "Ruby", "Ruby", "Land"]



puts keywords.join(' ')     # Answer will be "I princess Ruby Ruby Land"   => nil




((keywords.length.to_f / words.length.to_f) * 100).to_i           # Answer will be 71

# You are simply dividing it, then multiplying by 100.




 text = %q{
 	Ruby was a princess that loved to go on adventures.
 	She would occasionally visit the forest and gather herbs for her grandmother.
 	When the weather is good, she would hike up to the mountains nearby and takes naps.
        
        Besides taking naps on top of mountains, she enjoys eating ice cream.
        Not just any ice cream...cookie dough ice cream!
 }
 
 
 
 sentences = text.gsub(/\s+/,' ').strip.split(/\.|\?|!/)
 sentences_sorted = sentences.sort_by { |sentence| sentence.length }
 one_third = sentences_sorted.length / 3
 ideal_sentences = sentences_sorted.slice(one_third, one_third + 1)
 ideal_sentences = ideal_sentences.select { |sentence| sentence =~/is|are/ }
 
 
 
puts ideal_sentences.join(". ")



# "gsub" = Gets rid of all large areas of whitespace and replaces them with a single space.

# "strip" = Removes all extra whitespace from the start and the end of the string.

# Arrays and hashes have the "sort_by" method, which you can arrange XXX into any order you want.

# "Slice" = Cuts out a section of the array to assign to "ideal_sentences".

# "Join" = Joinse the "ideal_sentences" together with a full stop and space between them to make them readable.























