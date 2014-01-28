# encoding: utf-8
=begin
/**
* @author zhzhussupovkz@gmail.com
* @copyright (c) 2014 Zhussupov Zhassulan zhzhussupovkz@gmail.com
*/
=end
#Mill
class Mill < House

  def initialize window, x, y
    super window, "images/buildings/mill.png", "images/buildings/mill-r.png", x, y
    @cost, @ecology, @people = 100, 5, 5
  end
  
end