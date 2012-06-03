# lesson7exercise3.rb
# David Birtwell
=begin

  Week 7 Exercise 3. 
  
  Write a method called month_days, that determines the number of days in a 
  month. Usage:

    days = month_days(5) # 31 (May)

    days = month_days(2, 2000) # 29 (February 2000)

  Remember, you could use the Date class here. Read the online documentation 
  for the Date class. You must account for leap years in this exercise.  
  
=end

require 'date'

# Default the year to current year if not passed in
def month_days(month_num, year=Time.now.year)

  # Steps:
  # 1) Set the date to the 1st day of the next month for which we want to
  #    count the number of days.
  # 2) Roll back a day, which takes us to the end of the month
  # 3) Return that day of the mmonht (end of month day == number of days in
  #    the month
  #
  # The code snipprt below shifts/increments the month of the date 1 month.
  # date >> 1
  # 
  # The below snippet subtracts one day from the date. In our case, this rolls
  # back the date to the previous day (subtracts one day). 
  # Note - This automativcally handes leap year.
  # date - 1
  #
  # returns the day of the date
  # date.day
  ((Date.new(year, month_num, 1) >> 1) - 1).day  
end
 
days = month_days(5) # 31 (May)
puts "Days: #{days}"

days = month_days(2, 2000) # 29 (February 2000)
puts "Days: #{days}"

days = month_days(6) # 30 (June)
puts "Days: #{days}"

days = month_days(12) # 31 (December)
puts "Days: #{days}"

days = month_days(1, 2008) # 1 (January 2008)
puts "Days: #{days}"
