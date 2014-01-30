# encoding: utf-8
=begin
/**
* @author zhzhussupovkz@gmail.com
* @copyright (c) 2014 Zhussupov Zhassulan zhzhussupovkz@gmail.com
*/
=end
#FirePostIcon
class FirePostIcon < InfoIcon

  def initialize window, x, y
    super window, "images/icons/fire-post.png", x, y, 2
  end
  
  def draw
    @object = FirePost.new window, 0, 0 if @get_info
    super
  end
end