# encoding: utf-8
=begin
/**
* @author zhzhussupovkz@gmail.com
* @copyright (c) 2014 Zhussupov Zhassulan zhzhussupovkz@gmail.com
*/
=end
#Hospital
class Hospital < House

  def initialize window, x, y
    super window, "Hospital", "images/buildings/hospital.png", "images/buildings/hospital-r.png", x, y
    @cost, @ecology, @people = 75, 10, 20
  end
  
end