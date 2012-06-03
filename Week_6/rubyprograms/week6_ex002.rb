# week6_ex002.rb
# David Birtwell
=begin
Week 6 Exercise 2. 

Write a Ruby program that analyzes an MP3 file. 

Many MP3 files have a 128-byte data structure at the end called an ID3 tag.
These 128 bytes are literally packed with information about the song: 
its name, the artist, which album it's from, and so on. 

You can parse this data structure by opening an MP3 file and doing a series
of reads from a position near the end of the file. 

According to the ID3 standard, if you start from the 128th-to-last byte of 
an MP3 file and read three bytes, you should get the string TAG. 

If you don't, there's no ID3 tag for this MP3 file, and nothing to do. 
If there is an ID3 tag present, then the 30 bytes after TAG contain the 
name of the song, the 30 bytes after that contain the name of the artist,
and so on. 

A sample song.mp3 file is available to test your program. Use Symbols, 
wherever possible.
=end

class MP3_Analyzer

  attr_reader :tag, :song_name, :artist_name, :album_name, :year, :comment
  TAG_SIZE = 3
  TAG_STRING = 'TAG'
  TAG_LOCATION = -128
  MIN_FILE_SIZE = 128  
  DATA_BYTE_SIZE = 30

  def initialize(filename)
  
    # initialize fields
    @song_name = ''
    @artist_name = ''   
    @album_name = ''
    @year = ''
    @comment = ''
  
    if filename == nil or filename.size == 0  
      raise ArgumentError.new('You must pass in a filename.')  
    end  
  
    file = File.new(filename, "r")
    
    if validated? (file)
      @song_name = file.read(DATA_BYTE_SIZE);    
      @artist_name = file.read(DATA_BYTE_SIZE);
      @album_name = file.read(DATA_BYTE_SIZE)
      @year = file.read(4)
      @comment = file.read(DATA_BYTE_SIZE)      
    end
  end

  private  
  def validated? file
  
    valid = true

    # File must be large enough to search for ID3 data
    if (file.size <= MIN_FILE_SIZE)    
      raise "#{file.path} must be larger than #{MIN_FILE_SIZE} bytes"
    end
    
    file.seek(TAG_LOCATION, IO::SEEK_END)
    @tag = file.read(TAG_SIZE);
    unless @tag == TAG_STRING
      puts "No ID3 tag in #{file.path}, cannot get MP3 information"
      valid = false
    end
    
    valid
  end
  
end

analyzer = MP3_Analyzer.new("song.mp3")
puts "Tag is: #{analyzer.tag}"
puts "Song is: #{analyzer.song_name}"
puts "Artist is: #{analyzer.artist_name}"
puts "Album Name is: #{analyzer.album_name}"
puts "Year is: #{analyzer.year}"
puts "Comment is: #{analyzer.comment}"
