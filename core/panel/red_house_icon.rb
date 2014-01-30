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
  end

  def draw
    @object = HouseRed.new window, 0, 0 if @get_info
    super
  end
  
end