# encoding: utf-8
=begin
/**
* @author zhzhussupovkz@gmail.com
* @copyright (c) 2014 Zhussupov Zhassulan zhzhussupovkz@gmail.com
*/
=end
#Shop
class Shop < House

  def initialize window, x, y
    super window, "Shop", "images/buildings/shop.png", "images/buildings/shop-r.png", x, y
    @cost, @ecology, @people = 10, 5, 5
  end
  
end