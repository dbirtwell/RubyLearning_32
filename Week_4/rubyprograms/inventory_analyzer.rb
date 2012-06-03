# inventory_analyzer.rb
# David Birtwell
=begin
NOTE: This is the analyzer application for this exercise

Week 4 Exercise 5. Difficulty level: MEDIUM 
Write a one-line Ruby script that displays on the screen all the files in the
current folder as well as everything in all its sub folders, in sorted order. 

Make use of Dir.glob method as follows:

Dir.glob('**/*')

Name this program inventory.rb. Create an inventory file by typing the 
following at the command prompt:

ruby inventory.rb > old-inventory.txt

After a few days, when some files would have been added / deleted from this 
folder, run the program again like:

ruby inventory.rb > new-inventory.txt

Now, write another Ruby script that displays on the screen all the files that 
have been added in this folder since the time the old-inventory.txt was 
created.

NOTE: This script will be called inventory_analyzer.rb
=end

# make sure we have the filenames passed in
unless ARGV.length == 2
  puts "USAGE: inventory_analyzer old_inventory_filename new_inventory_filename"
  exit
end

# TODO: See about using getopts
old_inventory = ARGV[0]
new_inventory = ARGV[1]

old_files = File.readlines(old_inventory)
new_files = File.readlines(new_inventory)

# determines what files were added to new_files, that didn't exist in old_files
def added_files(old_files,new_files)
  (old_files | new_files) - (old_files & new_files)
end

puts added_files(old_files,new_files)

