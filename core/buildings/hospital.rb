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
    @transport = Gosu::Image.new window, "images/transport/ambulance.png", true
  end

  def draw
    super
    @transport.draw x - 10, y + 40, 1
    @transport.draw x + 5, y + 45, 1
  end
  
end