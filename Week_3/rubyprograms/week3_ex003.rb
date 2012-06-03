# week3_ex003.rb
# David Birtwell
=begin
Week 3 Exercise 3. 
Make use of the class Dir for the following -

    Display your current working directory.
    Create a new directory tmp under your working directory.
    Change your working directory to tmp
    Display your current working directory.
    Go back to your original directory.
    Delete the tmp directory.
=end

require 'find'  

def read_current_dir
  # puts "Directory is: " + Dir.pwd
  Dir.pwd
end

# Display the current directory
puts "Current Directory is:  #{read_current_dir}"

TMP_DIR_NAME = "tmp"

# Create a new directory named "tmp"
Dir.mkdir(TMP_DIR_NAME)

# Change into that directory
Dir.chdir(TMP_DIR_NAME)
puts "Now in #{read_current_dir}"

# Move back up to the original directory
Dir.chdir("../");
puts "Now in #{read_current_dir}"

# Remove the new directory
puts "Now removing the directory #{TMP_DIR_NAME}"
Dir.rmdir(TMP_DIR_NAME)


