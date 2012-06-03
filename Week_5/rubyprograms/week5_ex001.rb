# week5_ex001.rb
# David Birtwell
=begin
Week 5 Exercise1. 

Write a class UnpredictableString which is a sub-class of String.
This sub-class should have a method called scramble() which randomly rearranges
any string as follows:

>ruby unpredictablestring.rb
daano.r n sdt a htIsw taikmgy r
>Exit code: 0
# the original string was: "It was a dark and stormy night."
=end

class String
	def scramble
	  self.split(//).sample(self.length).join('')
	end
end

original = "It was a dark and stormy night."
puts original.scramble

# Show the original string was not destroyed
puts original

##
## Explanation
##
## put a string into an array
#original_array = original.split(//)
#puts original_array
#
## randomize the array contents
#random_sample = original_array.sample(original.length)
#puts random_sample
#
## array to string
#result = random_sample.join('')
#puts result
#
# puts original.scramble