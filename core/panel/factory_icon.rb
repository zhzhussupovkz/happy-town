# encoding: utf-8
=begin
/**
* @author zhzhussupovkz@gmail.com
* @copyright (c) 2014 Zhussupov Zhassulan zhzhussupovkz@gmail.com
*/
=end
#FactoryIcon
class FactoryIcon < InfoIcon

  def initialize window, x, y
    super window, "images/icons/factory.png", x, y, 2
    @object = Factory.new window, x, y
  end
  
end