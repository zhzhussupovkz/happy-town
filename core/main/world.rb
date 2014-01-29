# encoding: utf-8
=begin
/**
* @author zhzhussupovkz@gmail.com
* @copyright (c) 2014 Zhussupov Zhassulan zhzhussupovkz@gmail.com
*/
=end
#World
class World

  def initialize window
    @window = window
    @bg = Gosu::Image.new window, 'images/grass.png', true
    @town = Town.new window
    @current = false
  end

  attr_reader :town
  attr_accessor :current

  def draw
    @bg.draw 0, 0, 0
    @town.draw
  end

  def update
    @town.update
  end
  
end