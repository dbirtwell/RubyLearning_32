# week3_ex011.rb
# David Birtwell
=begin
Week 3 Exercise 11. 

Write a Ruby program that, when given an array: 
collection = [12, 23, 456, 123, 4579] prints each number, and tells you
whether it is odd or even.

=end


def odd_or_even number
  if number % 2 == 0
    'even'
  else
    'odd'
  end
end

number_arr = [12, 23, 456, 123, 4579]

number_arr.each do |num| 
  puts num.to_s + " is " + "#{odd_or_even(num)}"
end


