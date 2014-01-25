# encoding: utf-8
=begin
/**
* @author zhzhussupovkz@gmail.com
* @copyright (c) 2014 Zhussupov Zhassulan zhzhussupovkz@gmail.com
*/
=end
#StatIcon
class StatIcon < Icon

  def initialize window, x, y
    super window, "images/panel/coins.png", x, y, 2
    @ui = Gosu::Font.new window, 'Monaco', 25
  end

  def draw
    tow
    @ui.draw ()
  end
  
end