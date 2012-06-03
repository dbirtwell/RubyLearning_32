# week1_ex004.rb
# David Birtwell
=begin
  Write a Ruby program that tells you how many minutes there are in a year 
  (do not bother right now about leap years etc.).
  
  RESULT:
  There are 31536000 seconds in a year
=end
# Constants
DAYS_IN_YEAR = 365
HOURS_IN_DAY = 24
MINUTES_IN_HOUR = 60
SECONDS_IN_MINUTE = 60

def minutes_in_year
  DAYS_IN_YEAR * HOURS_IN_DAY * MINUTES_IN_HOUR * SECONDS_IN_MINUTE
end

puts "There are #{minutes_in_year} seconds in a year"
