# p028swapcontents.rb
# David Birtwell
=begin
  Week 4, Exercise 4
  
  Write a Ruby program (call it p028swapcontents.rb) to do the following. 
  Take two text files say A and B. The program should swap the contents of 
  A and B. That is after the program is executed, A should contain B's contents
  and B should contains A's contents.
=end

require 'fileutils'

file_name_a = "file_a.txt"
file_name_b = "file_b.txt"
file_name_tmp= "file_tmp.txt"

# Copy file A to temp file
FileUtils.cp(file_name_a, file_name_tmp)
# Copy File B to A
FileUtils.cp(file_name_b, file_name_a)
#Copy tmp file (A) to B then remove temp file
FileUtils.cp(file_name_tmp, file_name_b)
FileUtils.rm(file_name_tmp)