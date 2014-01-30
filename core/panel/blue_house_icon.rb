# encoding: utf-8
=begin
/**
* @author zhzhussupovkz@gmail.com
* @copyright (c) 2014 Zhussupov Zhassulan zhzhussupovkz@gmail.com
*/
=end
#BlueHouseIcon
class BlueHouseIcon < InfoIcon

  def initialize window, x, y
    super window, "images/icons/house-blue.png", x, y, 2
  end
  
  def draw
    @object = HouseBlue.new window, 0, 0
    super
  end
end