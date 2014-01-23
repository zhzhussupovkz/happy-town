# encoding: utf-8
=begin
/**
* @author zhzhussupovkz@gmail.com
* @copyright (c) 2014 Zhussupov Zhassulan zhzhussupovkz@gmail.com
*/
=end
#House
class House

  def initialize window, img, x, y
    @window, @x, @y = window, img, x, y
    @bg = Gosu::Image.new window, img, true
  end
  
  def draw
    @bg.draw x, y, 1
  end
  
end