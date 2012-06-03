# week5_ex003.rb
# David Birtwell
=begin
Week 5 Exercise 3. 
Here are the program specifications for a simple game to be played against the
computer.

a. This game is played at the command-line.

b. The game starts when the computer selects three consecutive cells in a 7 cell 
row (from 0 to 6). When that's complete, the game asks for your first guess.

c. Guess the computer's selected cells in the smallest number of guesses. 
You are given a rating or level, based on how well you perform.

d. At the command line, the user types in a number from 0 to 6. 
The computer checks if it's one of the selected cells. If it's a hit, 
increment the no_of_hits variable. 

In response to your guess, you'll see a result at the command-line: either 
"Hit", "Miss" or "End".

e. When you have guessed all three cells, the game ends by printing out your 
rating (your number of guesses).
=end

class Gameboard

  GUESS_DUPLICATE = "Duplicate"
  GUESS_NON_NUMERIC = "Not Numeric"  
  GUESS_HIT = "Hit"
  GUESS_MISS = "Miss"
  GUESS_KILL = "kill"
 
  def initialize
    @cell_array = Array[0, 0, 0, 0, 0, 0, 0]
    @hits_array = Array.new
    @no_of_hits = 0;
  end
  
  def set_locations_cells locations
    @locations = locations
    
    # Initialize the array
    locations.each { |x| @cell_array[x] = 1 }
    
    # Turn on below for debugging
    # puts "#{@cell_array}"
  end
  
  def validate_guess user_guess
    result = ''
    # See if the enterd is a number
    if (user_guess =~ /^[-+]?[0-9]+$/) == nil
      is_numeric_guess = false
      puts "#{user_guess} is not a number, try again\n"
      result = GUESS_NON_NUMERIC
    end

    # See if the value enteres has already been guessed
    if(@hits_array.include?(user_guess) == true)
      puts "You already guessed #{user_guess}, but this is still going to count as a guess anyway\n"
      result = GUESS_DUPLICATE
    end
	
    return result
  end
  
  def check_yourself user_guess
    result = validate_guess user_guess
    
    if	(result != GUESS_NON_NUMERIC && result != GUESS_DUPLICATE)
      @hits_array << user_guess
      if (@cell_array[user_guess.to_i-1] == 1)
	    @no_of_hits += 1
		result = GUESS_HIT
      else
        result = GUESS_MISS
      end
  
      if (@no_of_hits == 3)
	    puts 'End'
        result = GUESS_KILL
	  else
	    puts result
	  end
	end
	
	return result
  end

end