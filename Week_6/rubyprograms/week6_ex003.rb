require 'logger'

# week6_ex003.rb
# David Birtwell
=begin

  Week 6 Exercise 3. 
  Modify your TextAnalyzer program to add the logging feature.
  
  === Original Instruction ===

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
class TextFileAnalyzer
 
  attr_accessor :statistics
 
  def initialize(filename, logging_level='WARN')
    if filename == nil or filename.size == 0  
      raise ArgumentError.new('You must pass in a filename.')  
    end
	
    init_logging logging_level
    
    @statistics = Hash.new
    analyze filename
  end
  
  private
  def init_logging level='WARN'
  
    level_hash = {'ERROR'=>Logger::ERROR ,'FATAL'=> Logger::FATAL ,
    'WARN'=> Logger::WARN ,'INFO'=> Logger::INFO , 'DEBUG'=> Logger::DEBUG}

    @log = Logger.new('log.txt')

    level.upcase!
    
    # default log level if invalid level key passed in by user
    unless level_hash.has_key?(level)
      level = 'WARN'
    end
      
    @log.level = level_hash[level]
 
    @log.debug "Initializing Log file"  
  end
  
  def analyze filename 
 
    file = File.new(filename, "r")
 
    statistics[:filename]=filename
    @log.debug "Now analyzing #{filename}"
  
    whole_text_file = read_and_count_number_of_lines_in file
    
	# Check the Windows vs UNIX CR LF
    if whole_text_file.include?("\r\n")
      convert_linefeeds_from_dos_to_unix! whole_text_file
    end
  
    # 3) Continued ... and count the number of characters in the file
    statistics[:whole_text_file_length]=whole_text_file.length
    @log.info "There are #{statistics[:whole_text_file_length]} characters in the file"
 
    ###############################################################################
    # 4) Temporarily remove all whitespace and measure the length of the resulting
    #     string to get the character count excluding spaces.
    ###############################################################################	 
    # Note, we don't know regex yet
    statistics[:character_count]=whole_text_file.gsub(" ", "").length
    @log.info "There are #{statistics[:character_count]} characters in the file, minus whitespace"
 
    ###############################################################################
    # 5) Split on whitespace to find out how many words there are.
    ###############################################################################
    statistics[:word_count]=whole_text_file.split(" ").length
    @log.info "There are #{statistics[:word_count]} words in the file"
 
    ###############################################################################
    #  6) Split on full stops (.), '!' and '?' to find out how many sentences there
    #     are.
    ###############################################################################
    sentence_array = whole_text_file.split(/[.!?]/)
    statistics[:sentence_count]="#{sentence_array.length}"
    @log.info "There are #{statistics[:sentence_count]} sentences in the file"
 
    ###############################################################################
    # 7) Split on double newlines to find out how many paragraphs there are.
    ###############################################################################
    paragraph_array = whole_text_file.split("\n\n")
    statistics[:paragraph_count]=paragraph_array.length
    @log.info "There are #{statistics[:paragraph_count]} paragraphs in the file"
 
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
    statistics[:average_number_words_per_sentence]=format('%.2f', avg_num_words_per_sentence)
     
    # 9) Average number of sentences per paragraph
    # -----------------------------------------------
    sentence_per_paragraph_count_array = Array.new
    paragraph_array.each do |paragraph|
      sentence_array = paragraph.split("\n")
      @log.debug "Sentences in paragraph: #{sentence_array.length}"
      sentence_per_paragraph_count_array << sentence_array.length
    end
    counter = 0.00
    sentence_per_paragraph_count_array.each do |sentence_count|
      counter += sentence_count
    end
    avg_num_sentences_per_paragraph = counter/sentence_per_paragraph_count_array.length
    statistics[:average_number_sentences_per_paragraph]=format('%.2f', avg_num_sentences_per_paragraph)
    @log.info "The average number of sentences per paragraph is: #{statistics[:average_number_sentences_per_paragraph]}"    
    
  end
 
  def convert_linefeeds_from_dos_to_unix! whole_text_file
    whole_text_file.gsub!(/\r\n?/, "\n")
  end
  
  def read_and_count_number_of_lines_in file 
    # Initialize counters  
    number_of_lines = 0
  
    whole_text_file = ""
    while (line = file.gets)
      # 2) Count the number of lines
      number_of_lines += 1
  
      # 3) Put the text into a string
      whole_text_file << line
    end
 
    # 2) Continued ... and count the number of lines
    statistics[:number_of_lines]=number_of_lines    
    @log.info "There are #{statistics[:number_of_lines]} lines in the file"
 
    return whole_text_file  
  end

  def to_s
    # use "here document" for creating a multiline string
    <<-STATS
      Filename: #{statistics[:filename]}
      Lines file: #{statistics[:number_of_lines]}
      Characters in file: #{statistics[:whole_text_file_length]}
      Characters in file, minus whitespace: #{statistics[:character_count]}
      Words in file: #{statistics[:word_count]}
      Sentences in the file #{statistics[:sentence_count]}
      Paragraphs in file: #{statistics[:paragraph_count]}
      Average number of words per sentence is: #{statistics[:average_number_words_per_sentence]}
      Average number of sentences per paragraph is: #{statistics[:average_number_sentences_per_paragraph]}
    STATS
  end
 
end
  
#analyzer = TextFileAnalyzer.new("text.txt", 'DEBUG')
#analyzer = TextFileAnalyzer.new("text.txt", 'debug')
# analyzer = TextFileAnalyzer.new("text.txt", 'frog')
analyzer = TextFileAnalyzer.new("text.txt")
puts "#{analyzer}"
