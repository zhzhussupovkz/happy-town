# encoding: utf-8
=begin
/**
* @author zhzhussupovkz@gmail.com
* @copyright (c) 2014 Zhussupov Zhassulan zhzhussupovkz@gmail.com
*/
=end
#Panel
class Panel

  def initialize window
    @window = window
    @bg = Gosu::Image.new window, 'images/panel/panel.png', true
  end

  def draw
    @bg.draw 0, 400, 1
  end
  
  
end