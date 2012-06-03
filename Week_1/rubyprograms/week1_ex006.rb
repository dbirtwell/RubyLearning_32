# week1_ex006.rb
# David Birtwell
=begin
  Week 1, Exercise 6. 
  Write a method called convert that takes one argument which is a temperature
  in degrees Fahrenheit. 
  
  This method should return the temperature in degrees Celsius.
  
  To format the output to say 2 decimal places, we can use the Kernel's format
  method. For example, if x = 45.5678 then format("%.2f", x) will return the 
  string 45.57. 
  
  Another way is to use the round function as follows: 
  puts (x*100).round/100.0
  
  OUTPUT:
  
  32.0 degrees fahrenheit is 0.0 degrees in celsius
  212.0 degrees fahrenheit is 100.0 degrees in celsius
  85.0 degrees fahrenheit is 29.4444444444444 degrees in celsius
  85.0 degrees fahrenheit is 29.4444444444444 degrees in celsius  
  85.0 degrees fahrenheit is 29.44 degrees in celsius
=end

def convert(temperature_in_fahrenheit)
  (temperature_in_fahrenheit - 32.00) * 5 / 9
end

fahrenheit_value = 32.00
in_celsius = convert fahrenheit_value.to_i

puts fahrenheit_value.to_s + " degrees fahrenheit is " + in_celsius.to_s + 
  " degrees in celsius"

# same as puts(212)
# puts convert 212

fahrenheit_value = 212.00
in_celsius = convert fahrenheit_value.to_i
puts fahrenheit_value.to_s + " degrees fahrenheit is " + in_celsius.to_s + 
  " degrees in celsius"

fahrenheit_value = 85.00
in_celsius = convert fahrenheit_value.to_i
puts fahrenheit_value.to_s + " degrees fahrenheit is " + in_celsius.to_s + 
  " degrees in celsius"
puts "#{fahrenheit_value} degrees fahrenheit is #{in_celsius} degrees in celsius"

# The below is the same as:
# puts "#{fahrenheit_value} degrees fahrenheit is " + format("%.2f", in_celsius) + " degrees in celsius"
puts "#{fahrenheit_value} degrees fahrenheit is #{format("%.2f", in_celsius)} degrees in celsius"
  
