# week2_ex003.rb
# David Birtwell
=begin
Exercise3. Write a method leap_year?. 
It should accept a year value from the user, check whether it's a leap year, 
and then return true or false. 

With the help of this leap_year?() method calculate and display the number of
minutes in a leap year (2000 and 2004) and the number of minutes in a non-leap 
year (1900 and 2005). 

Note: Every year whose number is divisible by four without a remainder is a 
leap year, excepting the full centuries, which, to be leap years, must be 
divisible by 400 without a remainder. If not so divisible they are common 
years. 1900, therefore, is not a leap year.
=end

NUM_DAYS_IN_LEAP_YEAR = 366
NUM_DAYS_IN_NON_LEAP_YEAR = 365
HOURS_IN_DAY = 24.00
MINUTES_IN_HOUR = 60.00

def num_days_in_year (is_leap_year)
  if is_leap_year
    format("%.0f", (NUM_DAYS_IN_LEAP_YEAR * HOURS_IN_DAY * MINUTES_IN_HOUR))
  else
    format("%.0f", (NUM_DAYS_IN_NON_LEAP_YEAR * HOURS_IN_DAY * MINUTES_IN_HOUR))  
  end
end

def leap_year? (year)
  is_leap_year = case #{year}
    # full centuries when divisible by 400 without a remainder are leap years
    when year % 400 == 0 then true
    # full centuries when divisible by 100 without a remainder are NOT leap years
    when year % 100 == 0 then false    
    # Every year whose number is divisible by four without a remainder is a 
    when year % 4 == 0 then true
    # else if divisible by 4 without remainder
    # (true if no remainder)
    else year % 4 == 0      
  end
  
  puts "The number of minutes in #{year} is: " + num_days_in_year(is_leap_year)
  
  return is_leap_year
end

year = 2000
puts "The year #{year} is a leap year: " + leap_year?(year).to_s

year = 2004
puts "The year #{year} is a leap year: " + leap_year?(year).to_s

year = 1900
puts "The year #{year} is a leap year: " + leap_year?(year).to_s

year = 2005
puts "The year #{year} is a leap year: " + leap_year?(year).to_s

year = 2012
puts "The year #{year} is a leap year: " + leap_year?(year).to_s

