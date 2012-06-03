require_relative 'lesson7exercise1'

# lesson7exercise1a.rb
# David Birtwell
=begin

  Week 7 Exercise 1. 
  
  NOTE: This is 2nd program detailed in the exercise
  
  Write a Ruby program named lesson7exercise1.rb that defines a class called
  Klass which will be called in another program as follows:

  obj = Klass.new("hello")

  puts obj.say_hello

  where say_hello is a method in that class, which returns the string sent 
  when an object of Klass is created. 
  
  Write another program named lesson7exercise1a.rb that creates an object
  of the class defined in program lesson7exercise1.rb and then marshals it
  and then restores it.
=end

obj = Klass.new("hello")

# serialize the class object
f = File.open('Klass_obj', 'w+')
Marshal.dump(obj, f)
f.close

# read the serialized object in
f = File.open('Klass_obj')
my_klass = Marshal.load(f);

puts "From serialized class object: #{my_klass.say_hello}"


