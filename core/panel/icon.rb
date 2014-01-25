# encoding: utf-8
=begin
/**
* @author zhzhussupovkz@gmail.com
* @copyright (c) 2014 Zhussupov Zhassulan zhzhussupovkz@gmail.com
*/
=end
#Icon
class Icon

  def initialize window, img ,x, y, order
    @window, @x, @y, @order = window, x, y, order
    @img = Gosu::Image.new window, img, true
  end

  attr_reader :window, :x, :y, :order

  def draw
    @img.draw x, y, order
  end
  
end