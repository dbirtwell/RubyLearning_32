# week3_ex006.rb
# David Birtwell
=begin
Week 3 Exercise 6. 

Write a Deaf Grandma program. 

Whatever you say to grandma (whatever you type in), she should respond with 
HUH?! SPEAK UP, SONNY!, unless you shout it (type in all capitals). 

If you shout, she can hear you (or at least she thinks so) and yells back, 
NO, NOT SINCE 1938! 

To make your program really believable, have grandma shout a different year 
each time; maybe any year at random between 1930 and 1950. 

You can't stop talking to grandma until you shout BYE.

Adapted from Chris Pine's Book.

For example:

You enter: Hello Grandma
Grandma responds: HUH?! SPEAK UP, SONNY!
You enter: HELLO GRANDMA
Grandma responds: NO, NOT SINCE 1938!
=end

done = false
year_array = (1930...1950).to_a

puts "Start speaking sonny"
until (done == true) do
  STDOUT.flush  
  you_speak = gets.chomp
  if (you_speak == "BYE")
    done = true
  else
    # Determine if you shouted
    if you_speak == you_speak.upcase
      year = year_array[rand(year_array.length)].to_s
      puts "NO, NOT SINC #{year}"
    else
      puts "HUH?! SPEAK UP, SONNY!"
    end
  end
end
