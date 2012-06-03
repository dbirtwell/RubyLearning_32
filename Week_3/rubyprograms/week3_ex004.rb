# week3_ex004.rb
# David Birtwell
=begin

Week 3 Exercise 4. 

Given the following Ruby code snippet:

a = (1930...1951).to_a
puts a[rand(a.size)]

When you run this program, which of the following values will not be displayed?

  1) 1929 - NO, outside bottom range
  2) 1930 - YES, bottom range threshold (inclusive)
  3) 1945 - YES, within range
  4) 1950 - YES, actually upper value of range
  5) 1951 - NO, upper threshold (non-inclusive) ".." would have included
  6) 1952 - NO, outside the upper range

Explain why that value will not be displayed.

Also, have a look at the splat operator:

a = [*1930...1951] # splat operator
=end

# 1930 - 1950, inclusive
a = (1930...1951).to_a
puts a[rand(a.size)]

# Note: according to rubyspec - 
# Splat produces the object in array when object's to_a returns nil
a = [*1930...1951] # splat operator
puts a.to_s