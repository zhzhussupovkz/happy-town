# encoding: utf-8
=begin
/**
* @author zhzhussupovkz@gmail.com
* @copyright (c) 2014 Zhussupov Zhassulan zhzhussupovkz@gmail.com
*/
=end
#HouseBlue
class HouseBlue < House

  def initialize window, x, y
    super window, "images/houses/house-blue.png", "images/houses/house-blue-r.png", x, y
    @cost, @ecology = 20, 4
  end
  
end