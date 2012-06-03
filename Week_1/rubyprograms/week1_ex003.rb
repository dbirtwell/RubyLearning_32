# week1_ex003.rb
# David Birtwell
=begin
Write a Ruby program that displays how old I am, if I am 979000000 seconds old.

Display the result as a floating point (decimal) number to two decimal places 
(for example, 17.23).

Note: To format the output to say 2 decimal places, we can use the Kernel's 
format method. For example, if x = 45.5678 then format("%.2f", x) will return 
the string 45.57
=end

# Constants
DAYS_IN_YEAR = 365.00
HOURS_IN_DAY = 24.00
MINUTES_IN_HOUR = 60.00
SECONDS_IN_MINUTE = 60.00

def seconds_to_years(sec)
(((sec / DAYS_IN_YEAR) / HOURS_IN_DAY)/MINUTES_IN_HOUR)/SECONDS_IN_MINUTE
end

puts "#{format("%.2f",seconds_to_years(979000000))}"