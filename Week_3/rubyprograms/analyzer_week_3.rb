# analyzer_week_3.rb
# David Birtwell
=begin

Week 3 exercise 7

  Your text analyzer will provide the following basic statistics:

  1) Character count
  2) Character count (excluding spaces)
  3) Line count
  5) Word count
  6) Sentence count
  7) Paragraph count
  8) Average number of words per sentence
  9) Average number of sentences per paragraph

	
  1) Load in a file containing the text or document you want to analyze.
  2) As you load the file line by line, keep a count of how many lines there 
     are (one of your statistics taken care of).
  3) Put the text into a string and measure its length to get your character
     count.
  4) Temporarily remove all whitespace and measure the length of the resulting
     string to get the character count excluding spaces.
  5) Split on whitespace to find out how many words there are.
  6) Split on full stops (.), '!' and '?' to find out how many sentences there
      are.
  7) Split on double newlines to find out how many paragraphs there are.
  8) Perform calculations to work out the averages.

	
=end

###############################################################################
#  1) Load in a file containing the text or document you want to analyze.
###############################################################################
  
# make sure we have the filename passed in
unless ARGV.length == 1
	puts "USAGE: analyzer.rb filename"
	exit
end

file_name = ARGV[0]

# Initialize counters
number_of_lines = 0

file = File.new(file_name, "r")
whole_text_file = ""
while (line = file.gets)
  # 2) Count the number of lines
  number_of_lines += 1
  
  # 3) Put the text into a string
  whole_text_file << line
end

puts "Statistics of file #{file_name}"
puts "-------------------------------------------------------\n\n"

# 2) Continued ... and count the number of lines
puts "There are #{number_of_lines} lines in the file"

# 3) Continued ... and count the number of characters in the file
puts "There are #{whole_text_file.length} characters in the file"

###############################################################################
# 4) Temporarily remove all whitespace and measure the length of the resulting
#     string to get the character count excluding spaces.
###############################################################################	 
# Note, we don't know regex yet
puts "There are #{whole_text_file.gsub(" ", "").length} characters in the file, minus whitespace"

###############################################################################
# 5) Split on whitespace to find out how many words there are.
###############################################################################
puts "There are #{whole_text_file.split(" ").length} words in the file"

###############################################################################
#  6) Split on full stops (.), '!' and '?' to find out how many sentences there
#     are.
###############################################################################
sentence_array = whole_text_file.split(/[.!?]/)
puts "There are #{whole_text_file.split(/[.!?]/).length} sentences in the file"

###############################################################################
# 7) Split on double newlines to find out how many paragraphs there are.
###############################################################################
paragraph_array = whole_text_file.split("\n\n")
puts "There are #{whole_text_file.split("\n\n").length} paragraphs in the file"

###############################################################################
#  8) Perform calculations to work out the averages.
###############################################################################

# 8) Average number of words per sentence
# -----------------------------------------------
words_per_sentence_count_array = Array.new
sentence_array.each do |sentence|
  words_array = sentence.split(" ")
  words_per_sentence_count_array << words_array.length
end
counter = 0.00
words_per_sentence_count_array.each do |words_count|
  # puts words_count
  counter += words_count
end
avg_num_words_per_sentence = counter/words_per_sentence_count_array.length
formated_value = format('%.2f', avg_num_words_per_sentence)
puts "The average number of words per sentence is: #{formated_value}"

# 9) Average number of sentences per paragraph
# -----------------------------------------------
sentence_per_paragraph_count_array = Array.new
paragraph_array.each do |paragraph|
  sentence_array = paragraph.split("\n")
  sentence_per_paragraph_count_array << sentence_array.length
end
counter = 0.00
sentence_per_paragraph_count_array.each do |sentence_count|
  ## puts sentence_count
  counter += sentence_count
end
avg_num_sentences_per_paragraph = counter/sentence_per_paragraph_count_array.length
formated_value = format('%.2f', avg_num_sentences_per_paragraph)
puts "The average number of sentences per paragraph is: #{formated_value}"