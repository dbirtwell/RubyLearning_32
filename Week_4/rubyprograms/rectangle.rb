=begin
Week 4 Exercise 2. 
Write a Rectangle class. I shall use your class as follows:

r = Rectangle.new(23.45, 34.67)
puts "Area is = #{r.area}"
puts "Perimeter is = #{r.perimeter}"
=end
class Rectangle 
  def initialize(height, width)  
    # Instance variables  
    @height = height  
    @width = width  
  end  
  
  def area  
    @height * @width
  end 
  
  def perimeter
    (@height * 2) + (@width * 2)
  end
  
end

r = Rectangle.new(23.45, 34.67)
puts "Area is = #{r.area}"
puts "Perimeter is = #{r.perimeter}"