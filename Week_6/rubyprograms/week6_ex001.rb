#
# David Birtwell
=begin
Week 6 Exercise 1. 

Write a class called Person that has balance as an instance variable and 
make it readable via an accessor.
=end

class Person
  # read and write access
  attr_accessor :balance

  def initialize(balance)
    @balance = balance
  end
end

a_person = Person.new("balance_value")

puts "Balance is: #{a_person.balance}"
