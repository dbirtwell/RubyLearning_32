# week1_ex005.rb
# David Birtwell
=begin
Actually Prints out "Hello Ruby World" 
WHY?

GUESS:
the variable my_string takes precedence over the method.
It is a local variable
=end
my_string = 'Hello Ruby World'
def my_string
  'Hello World'
end

puts my_string