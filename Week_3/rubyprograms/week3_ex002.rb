# week3_ex002.rb
# David Birtwell
=begin
Exercise2. 

Thanks to Marcos Souza for this exercise. 
A plain text file has the following contents:

test test test test test
test test test test test
test test test test test
test test test test test
test test test test test
test test word test test
test test test test test
test test test test test
test test test test test
test test test test test
test test test test test

Observe that in this file, there exists a word 'word'. 
Write a clever but readable Ruby program that updates this file and the final
contents become like this:

test test test test test
test test test test test
test test test test test
test test test test test
test test test test test
test test inserted word test test
test test test test test
test test test test test
test test test test test
test test test test test
test test test test test

Do not hard-code the file name.

USAGE:
week3_ex002.rb ex_002.txt
=end

def insert_word_in_file(file_name, word_to_insert, word_to_insert_before)
  # Initialize the buffer to write to the file to an empty string
   str_buff = ""
  
  # Append the "word_to_insert_before" to the "word_to_insert"
  replace_string = "#{word_to_insert} #{word_to_insert_before}"
  file = File.new(file_name, "r")
  while (line = file.gets)
	# Append converted text to the string buffer
	str_buff << line.gsub(word_to_insert_before, replace_string)
  end

  # For Testing - Append ".new" to the end of the file name
  # file = File.new(file_name + ".new", "w")  
  file = File.new(file_name, "w")
  file << str_buff  
end

# make sure we have the filename passed in
unless ARGV.length == 1
	puts "USAGE: week_3_ex002.rb filename"
	exit
end

# TODO: See about using getopts
file_name = ARGV[0]

word_to_insert = "inserted"
word_to_insert_before = "word"
insert_word_in_file file_name, word_to_insert, word_to_insert_before
