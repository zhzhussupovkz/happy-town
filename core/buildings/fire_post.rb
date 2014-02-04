# encoding: utf-8
=begin
/**
* @author zhzhussupovkz@gmail.com
* @copyright (c) 2014 Zhussupov Zhassulan zhzhussupovkz@gmail.com
*/
=end
#FirePost
class FirePost < House

  def initialize window, x, y
    super window, "Fire post", "images/buildings/fire-post.png", "images/buildings/fire-post-r.png", x, y
    @cost, @ecology, @people = 50, 10, 20
    @transport = Gosu::Image.new window, "images/transport/fireescape.png", true
  end

  def draw
    super
    @transport.draw x - 10, y + 17, 1
  end
  
end