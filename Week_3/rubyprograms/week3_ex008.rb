# week3_ex008.rb
# David Birtwell
=begin
Week 3 Exercise 8. 
Write a Ruby program that prints the numbers from 1 to 100.

But for multiples of three print "Fizz" instead of the number and for 
multiples of five print "Buzz". 

For numbers which are multiples of both three and five print "FizzBuzz". 

Discuss this in the FizzBuzz Forum.
=end

# Constants
FIZZ = "fizz"
BUZZ = "buzz"
FIZZBUZZ = "fizzbuzz"

def fizzbuzz (number_arr)
   number_arr.each do |number|
    if (number % 3 == 0) && (number % 5 == 0)
	  puts "#{FIZZBUZZ}"  
    elsif number % 3 == 0
	  puts "#{FIZZ}"
    elsif number % 5 == 0
	  puts "#{BUZZ}"	  
    else
      puts number
    end	  
  end
end

def print_fizzbuzz (number)
  if (number % 3 == 0) && (number % 5 == 0)
	puts "#{FIZZBUZZ}"  
  elsif number % 3 == 0
	puts "#{FIZZ}"
  elsif number % 5 == 0
	puts "#{BUZZ}"	  
  else
    puts number
  end	  
end

# includes 100
number_arr = (1..100)

fizzbuzz number_arr

1.upto(100) do |number|
  print_fizzbuzz number
end