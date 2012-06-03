# week5_ex002.rb
# David Birtwell
=begin
Week 5 Exercise 2. 
This exercise thanks to Kathy Sierra. Once upon a time in a software shop,
two programmers were given the same spec and told to "build it". The Really
Annoying Project Manager forced the two coders to compete, by promising that
whoever delivers first gets one of those cool Aeron chairs all the Silicon 
Valley guys have. 

The spec. There will be shapes on a GUI, a square, a circle and a triangle. 
When the user clicks on a shape, the shape will rotate clockwise 360 degrees
(ie. all the way around) and play an AIF sound file specific to that particular
shape. Go for it guys and show me your code.

Note: This exercise is about inheritance, method overriding and method 
overloading not about UI.
=end

class AbstractShape
  def click
    rotate
    play_sound
  end

  def rotate
    puts "Now rotating #{name} 360 degrees"
  end
  
  def play_sound
    puts "Now playing the sound for #{name}"
  end
end

class Square < AbstractShape
  def name; "Square"; end
  
  def rotate
    puts "Now REALLY rotating #{name} 360 degrees in the class Square"
  end
  
  def play_sound
    puts "Now REALLY playing the sound for #{name} in the class Square"
  end
end

class Circle < AbstractShape
  def name; "Circle"; end
end

class Triangle < AbstractShape
  def name; "Triangle"; end
end

my_square = Square.new.click
my_circle = Circle.new.click
my_triangle = Triangle.new.click

