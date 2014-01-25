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
    super window, "images/buildings/police-post.png", "images/buildings/police-post-r.png", x, y
    @cost, @ecology, @people = 50, 10, 20
  end
  
end