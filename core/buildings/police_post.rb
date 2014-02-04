# encoding: utf-8
=begin
/**
* @author zhzhussupovkz@gmail.com
* @copyright (c) 2014 Zhussupov Zhassulan zhzhussupovkz@gmail.com
*/
=end
#PolicePost
class PolicePost < House

  def initialize window, x, y
    super window, "Police post", "images/buildings/police-post.png", "images/buildings/police-post-r.png", x, y
    @cost, @ecology, @people = 50, 10, 20
    @transport = Gosu::Image.new window, "images/transport/police.png", true
  end

  def draw
    super
    @transport.draw x - 10, y + 15, 1
  end
  
end