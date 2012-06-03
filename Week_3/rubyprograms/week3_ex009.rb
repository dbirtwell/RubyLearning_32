# week3_ex009.rb
# David Birtwell
=begin
Week 3 Exercise 9. 

Given a string, write a program to reverse the word order 
(rather than character order). The String and Array classes provide methods 
which will be very helpful for solving this exercise.
=end

original_string = "The quick gray fox jumps over the lazy dog"

original_string_array = original_string.split(' ')

puts original_string_array.reverse