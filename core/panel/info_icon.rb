# encoding: utf-8
=begin
/**
* @author zhzhussupovkz@gmail.com
* @copyright (c) 2014 Zhussupov Zhassulan zhzhussupovkz@gmail.com
*/
=end
#InfoIcon
class InfoIcon < Icon

  def initialize window, img ,x, y, order
    super window, img, x, y, order
    @info = Gosu::Image.new window, img.gsub(/.png/, '-l.png'), true
    @ui = Gosu::Font.new window, 'Monaco', 25
    @get_info = false
    @object = false
  end

  attr_accessor :get_info
  attr_reader :object

  def draw
    super
    if @get_info == true
      @info.draw 250, 425, order
      @ui.draw("Cost: #{object.cost}$", 325, 425, order)
      if object.ecology > 0
        @ui.draw("Ecology: +#{object.ecology}", 325, 445, order)
      else
        @ui.draw("Ecology: #{object.ecology}", 325, 445, order)
      end
      @ui.draw("People: #{object.people}", 325, 465, order)
    end
  end
  
end