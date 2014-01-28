# encoding: utf-8
=begin
/**
* @author zhzhussupovkz@gmail.com
* @copyright (c) 2014 Zhussupov Zhassulan zhzhussupovkz@gmail.com
*/
=end
#RedHouseIcon
class RedHouseIcon < InfoIcon

  def initialize window, x, y
    super window, "images/icons/house-red.png", x, y, 2
    @object = HouseRed.new window, x, y
  end
  
end