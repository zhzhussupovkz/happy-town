# encoding: utf-8
=begin
/**
* @author zhzhussupovkz@gmail.com
* @copyright (c) 2014 Zhussupov Zhassulan zhzhussupovkz@gmail.com
*/
=end
#ShopIcon
class ShopIcon < InfoIcon

  def initialize window, x, y
    super window, "images/icons/shop.png", x, y, 2
    @object = Shop.new window, x, y
  end
  
end