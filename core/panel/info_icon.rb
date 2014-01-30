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
    @build = Gosu::Image.new window, "images/panel/build.png", true
    @ui = Gosu::Font.new window, 'Monaco', 25
    @get_info = false
    @object = false
  end

  attr_accessor :get_info, :object

  def draw
    super
    if @get_info == true
      @info.draw 250, 350, order
      @ui.draw("#{object.name}", 275, 325, order)
      @ui.draw("Cost: #{object.cost}$", 325, 345, order)
      if object.ecology > 0
        @ui.draw("Ecology: +#{object.ecology}", 325, 365, order)
      else
        @ui.draw("Ecology: #{object.ecology}", 325, 365, order)
      end
      @ui.draw("People: #{object.people}", 325, 385, order)
      @build.draw 325, 415, order
    end
  end

  def build_new_obj
    if @get_info == true && 325 < window.mouse_x && window.mouse_x < 400 && 415 < window.mouse_y && window.mouse_y < 445 && (window.button_down? Gosu::MsLeft)
      window.world.current = object
      object = false
    end
  end
  
end