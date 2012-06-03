# lesson7exercise4.rb
# David Birtwell
=begin

  Week 7 Exercise 4. 
  
  Exercise4. Write a method last_modified(file) that takes a file name and 
  displays something like this: 
  
  file was last modified 125.873605469919 days ago. 
  
  Use the Time class.
=end

require 'date'

SECONDS_IN_A_DAY = 60 * 60 * 24

def last_modified file
  last_mod_time = File.mtime(file)
  (Time.now - last_mod_time) / SECONDS_IN_A_DAY  
end

puts "File last modified: #{last_modified('test.txt')}"
puts "File last modified: #{last_modified('test_2.txt')}"
