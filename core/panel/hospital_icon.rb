# encoding: utf-8
=begin
/**
* @author zhzhussupovkz@gmail.com
* @copyright (c) 2014 Zhussupov Zhassulan zhzhussupovkz@gmail.com
*/
=end
#HospitalIcon
class HospitalIcon < InfoIcon

  def initialize window, x, y
    super window, "images/icons/hospital.png", x, y, 2
  end

  def draw
    @object = Hospital.new window, 0, 0
    super
  end
  
end