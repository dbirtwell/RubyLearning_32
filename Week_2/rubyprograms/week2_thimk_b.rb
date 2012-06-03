# week2_thimk_b.rb
=begin
  What happens in the following Ruby code?

  x = 10
  y = 20
  x, y = y, x
  puts x
  puts y
  
  Results:
  
    20
    10
    
    essentially does a "switch" or reverses the 2 value assigments
  
  Why:
  
    first, second = 1, 2    # results in first = 1, second = 2
    
    so in x,y = y,x ... x = value of y, and y = value of x
    
  Beware:
  
    first, second = 1 # first is 1, second is nil
    
    ... second never gets assigned to anything
  
=end

  x = 10
  y = 20
  
  # This does a switch of the value assigments
  x, y = y, x
  
  puts x
  puts y

