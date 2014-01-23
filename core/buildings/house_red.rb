# encoding: utf-8
=begin
/**
* @author zhzhussupovkz@gmail.com
* @copyright (c) 2014 Zhussupov Zhassulan zhzhussupovkz@gmail.com
*/
=end
#HouseRed
class HouseRed < House

  def initialize window, x, y
    super window, "images/houses/house-red.png", "images/houses/house-red-r.png", x, y
    @cost, @ecology = 10, 2
  end
  
end