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
    super window, "images/buildings/fire-post.png", "images/buildings/fire-post-r.png", x, y
    @cost, @ecology, @people = 50, 10, 20
  end
  
end