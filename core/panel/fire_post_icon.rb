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
    @object = FirePost.new window, x, y
  end
  
end