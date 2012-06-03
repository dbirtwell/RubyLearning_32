# week2_ex002.rb
# David Birtwell
=begin
  Understand the difference in the outputs of the two methods below
  
  Both have same outputs to the screen.
  
  BUT: mtdarray_1 just prints out
=end

# prints 0 to 9
def mtdarry_1
 10.times do |num|
 puts num
 end
end

mtdarry_1

puts"\n\n===================================\n\n"

# prints 0 to 10
# WHY - Because
# 1) puts num in loop executes 10 times (results in 0 -> 9)
# 2) puts mtdarry_2 "puts" the last line which was the value 10, 
# the value of the counter before it broke out of the the loop 
# (it was set BEFORE the check)
def mtdarry_2
 10.times do |num|
 puts num
 end
end
 puts mtdarry_2
 

# The below kinda shows why ... see that count is set to 10, before the 
# condition check takes place
count = 0
while count < 10
  puts "Count is: " + count.to_s
  count += 1
end
puts "Count is: " + count.to_s