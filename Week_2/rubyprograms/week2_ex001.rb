# week2_ex001.rb
# David Birtwell
=begin
Week 2 Exercise 1. 

Write a program that processes the string s = 
"Welcome to the forum.\nHere you can learn Ruby.\nAlong with other members.\n" 
a line at a time, using all that we have learned so far. The expected output is:

>ruby tmp.rb
Line 1: Welcome to the forum.
Line 2: Here you can learn Ruby.
Line 3: Along with other members.
>Exit code: 0

=end

def print_lines (lines)
  # Get the length of the array and iterate through it
  lines.length.times do |i|
    puts "Line " + (i + 1).to_s + ": " + lines[i]
  end
end

s = "Welcome to the forum.\nHere you can learn Ruby.\nAlong with other members.\n" 

# split the lines by the CR
print_lines (s.split(/\n/))
