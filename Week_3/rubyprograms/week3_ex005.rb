# week3_ex005.rb
# David Birtwell
=begin
Week 3 Exercise 5. 

Given a string s = 'key=value', create two strings s1 and s2 such that s1 
contains key and s2 contains value. Hint: Use some of the String functions.
=end

s = 'key=value'

s_split = s.split('=')

s1 = s_split[0]
s2 = s_split[1]

puts "s1 = " + s1
puts "s2 = " + s2