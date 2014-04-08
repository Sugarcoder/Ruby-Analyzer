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


# Answer will be 414 characters excluding spaces





# COUNTING WORDS: 


puts "You are a hero".scan(/\w/).join               # Answer will be "Youareahero"

puts "You are a hero".scan(/\w+/).join('-')         # Answer will be "You-are-a-hero"

puts "You are a hero".scan(/\w+/).length            # Answer will be 4



# SPLIT:

# The "split" apprach demonstrates a core tenet of Ruby.
# Split = Will split the whitespace (single or multiple characters of spaces, tabs, newlines, etc)
# "Split" literally breaks the string into parts. 















