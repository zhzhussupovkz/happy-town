# encoding: utf-8
=begin
/**
* @author zhzhussupovkz@gmail.com
* @copyright (c) 2014 Zhussupov Zhassulan zhzhussupovkz@gmail.com
*/
=end
#HouseOrange
class HouseOrange < House

  def initialize window, x, y
    super window, "images/houses/house-orange.png", "images/houses/house-orange-r.png", x, y
    @cost, @ecology = 5, 1
  end
  
end