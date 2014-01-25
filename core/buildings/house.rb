# encoding: utf-8
=begin
/**
* @author zhzhussupovkz@gmail.com
* @copyright (c) 2014 Zhussupov Zhassulan zhzhussupovkz@gmail.com
*/
=end
#House
class House

  def initialize window, left, right, x, y
    @window, @left, @right, @x, @y = window, left, right, x, y
    @left = Gosu::Image.new window, left, true
    @right = Gosu::Image.new window, right, true
    @face_left, @ecology, @cost, @people = true, 0, 10, 0
    @drawing = true
  end

  attr_reader :window, :x, :y, :cost, :ecology, :people
  attr_accessor :drawing
  
  def draw
    if @face_left == true
      @left.draw x, y, 1
    else
      @right.draw x, y, 1
    end
  end
  
end