# encoding: utf-8
=begin
/**
* @author zhzhussupovkz@gmail.com
* @copyright (c) 2014 Zhussupov Zhassulan zhzhussupovkz@gmail.com
*/
=end
#Factory
class Factory < House

  def initialize window, x, y
    super window, "images/buildings/factory.png", "images/buildings/factory-r.png", x, y
    @cost, @ecology, @people = 75, -20, 20
  end
  
end