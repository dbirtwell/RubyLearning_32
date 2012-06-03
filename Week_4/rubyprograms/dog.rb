# dog.rb
# David Birtwell
=begin
Exercise1. Write a class called Dog, that has name as an instance variable and
the following methods:

bark(), eat(), chase_cat()

I shall create the Dog object as follows:

d = Dog.new('Leo')

=end
class Dog
  # NOTE:
  # This is NOT the constructor.
  # This gets called AFTER the constructor
  # (The constructor is called new)
  def initialize(name)
    @name = name
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
end

d = Dog.new('Leo')
d.bark