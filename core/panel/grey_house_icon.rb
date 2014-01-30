# encoding: utf-8
=begin
/**
* @author zhzhussupovkz@gmail.com
* @copyright (c) 2014 Zhussupov Zhassulan zhzhussupovkz@gmail.com
*/
=end
#GreyHouseIcon
class GreyHouseIcon < InfoIcon

  def initialize window, x, y
    super window, "images/icons/house-grey.png", x, y, 2
  end

  def draw
    @object = HouseGrey.new window, 0, 0
    super
  end
  
end