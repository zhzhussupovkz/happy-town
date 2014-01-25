# encoding: utf-8
=begin
/**
* @author zhzhussupovkz@gmail.com
* @copyright (c) 2014 Zhussupov Zhassulan zhzhussupovkz@gmail.com
*/
=end
#HouseGrey
class HouseGrey < House

  def initialize window, x, y
    super window, "images/houses/house-grey.png", "images/houses/house-grey-r.png", x, y
    @cost, @ecology, @people = 15, 3, 7
  end
  
end