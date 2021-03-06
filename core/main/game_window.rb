# encoding: utf-8
=begin
/**
* @author zhzhussupovkz@gmail.com
* @copyright (c) 2014 Zhussupov Zhassulan zhzhussupovkz@gmail.com
*/
=end
#GameWindow
class GameWindow < Gosu::Window

  include Singleton

  def initialize
    super 640, 480, false
    @world = World.new self
    @panel = Panel.new self
    @cursor = Gosu::Image.new self, "images/cursor.png"
    self.caption = "Happy Town"
  end

  attr_reader :world

  def draw
    @world.draw
    @panel.draw
    @cursor.draw mouse_x, mouse_y, 5
  end

  def update
    @world.update
    @panel.update
  end
  
  def button_down key
    case key
    when Gosu::KbEscape
      close
    end
  end
end