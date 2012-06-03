# week4_ex003B.rb
# David Birtwell
=begin
Week 4 Exercise 3. 

Modify your Deaf Grandma program (Week 3 / Exercise6): 

What if grandma doesn't want you to leave? When you shout BYE, 
she could pretend not to hear you. Change your previous program so that you 
have to shout BYE three times in a row. 

Make sure to test your program: if you shout BYE three times, but not in a row,
you should still be talking to grandma. You must shout BYE three separate times.

If you shout BYEBYEBYE or BYE BYE BYE, grandma should pretend not to hear you 
(and not count it as a BYE). 
=end

YEAR_ARRAY = (1930...1950).to_a

def granny_responds(what_you_said)
    # Determine if you shouted
    if what_you_said == what_you_said.upcase
      "NO, NOT SINCE #{YEAR_ARRAY.sample}"
    else
      "HUH?! SPEAK UP, SONNY!"
    end
end

bye_counter = 0
puts "Start speaking sonny"
until (bye_counter == 3) do
  STDOUT.sync=true  
  what_you_said = gets.chomp
  if (what_you_said == "BYE")
    bye_counter += 1
  else
    # If you did not say "BYE", reset the BYE counter
    bye_counter = 0
    
    puts granny_responds(what_you_said)
  end
end