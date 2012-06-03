#
#
=begin

Week 4 Exercise1A (optional). 
Here's an additional challenge for all of you who already finished Exercise1: 
Write a method teach_trick which allows you to teach tricks to specific 
instances of the dog class like this:

d = Dog.new('Lassie')
d.teach_trick(:dance) { "#{@name} is dancing!" }
puts d.dance
d.teach_trick(:poo) { "#{@name} is a smelly doggy!" }
puts d.poo
puts
d2=Dog.new('Fido')
puts d2.dance
d2.teach_trick(:laugh) { "#{@name} finds this hilarious!" }
puts d2.laugh
puts d.laugh
puts
d3=Dog.new('Stimpy')
puts d3.dance
puts d3.laugh
# >> Lassie is dancing!
# >> Lassie is a smelly doggy!
# >>
# >> Fido doesn't know how to dance!
# >> Fido finds this hilarious!
# >> Lassie doesn't know how to laugh!
# >>
# >> Stimpy doesn't know how to dance!
# >> Stimpy doesn't know how to laugh!

You will also have to deal with the fact that people may get confused and will 
tell a certain dog to perform a trick it hasn't learned yet...

=end
class Dog2
  # NOTE:
  # This is NOT the constructor.
  # This gets called AFTER the constructor
  # (The constructor is called new)
  def initialize(name)
    @name = name
	@tricks = Hash.new
  end

  def bark
    puts 'Ruff! Ruff!'
  end

  def eat
    puts 'Munch, Munch'
  end

  def chase_cat
    puts 'Gonna get that puttie cat'
  end
  
  # Tried to use a map to hold the tricks as a key and blocks as a value,
  # but didn't seem right.
  # define_singleton_method is much cleaner
  #
  def teach_trick(trick_name, &code_block)
    define_singleton_method(trick_name, &code_block)
  end
  
  def method_missing(trick_name)
    puts "#{@name} doesn't know how to #{trick_name.to_s}"
  end
end

d = Dog2.new('Lassie')
d.teach_trick(:dance) { "#{@name} is dancing!" }
puts d.dance
d.teach_trick(:poo) { "#{@name} is a smelly doggy!" }
puts d.poo
puts
d2=Dog2.new('Fido')
puts d2.dance
d2.teach_trick(:laugh) { "#{@name} finds this hilarious!" }
puts d2.laugh
puts d.laugh
puts
d3=Dog2.new('Stimpy')
puts d3.dance
puts d3.laugh