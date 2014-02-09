# encoding: utf-8
=begin
/**
* @author zhzhussupovkz@gmail.com
* @copyright (c) 2014 Zhussupov Zhassulan zhzhussupovkz@gmail.com
*/
=end
#House
class House

  def initialize window, name, left, right, x, y
    @window, @name, @left, @right, @x, @y = window, name, left, right, x, y
    @left = Gosu::Image.new window, left, true
    @right = Gosu::Image.new window, right, true
    @face_left, @ecology, @cost, @people = true, 0, 10, 0
    @strength, @green, @red= 100, Gosu::Color.argb(0xff00ff00), Gosu::Color.argb(0xffff0000)
    @drawing = true
    @health, @crime, @arch = 100, 0, 100
  end

  attr_reader :window, :name, :cost, :ecology, :people, :green, :red, :strength
  attr_accessor :drawing, :x, :y, :health, :crime, :arch
  
  def draw
    if @face_left == true
      @left.draw x, y, 1
    else
      @right.draw x, y, 1
    end
    window.draw_line(x + 4, y - 5, green, x + 4 + strength/4, y - 5, green, 1, mode = :default)
    window.draw_line(x + 4 + strength/4, y - 5, red, x + 29, y - 5, red, 1, mode = :default)
  end
  
end