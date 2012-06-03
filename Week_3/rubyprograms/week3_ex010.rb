# week3_ex010.rb
# David Birtwell
=begin
Week 3 Exercise 10. 

Write a Ruby program that, when given an array: collection = [1, 2, 3, 4, 5]
calculates the sum of its elements.
=end

number_array = [1, 2, 3, 4, 5]

total = 0
number_array.each do |num| 
  total += num
end

puts "The total of the collection is: #{total.to_s}"

# A way to do this by using inject
puts number_array.inject(0) {|sum, element| sum+element}

# Note: Can do it this way, as if no parameter is passed in inject(), 
# it assumes starting index of 0
puts number_array.inject {|sum, element| sum+element}