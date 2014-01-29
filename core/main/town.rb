# encoding: utf-8
=begin
/**
* @author zhzhussupovkz@gmail.com
* @copyright (c) 2014 Zhussupov Zhassulan zhzhussupovkz@gmail.com
*/
=end
#Town
class Town

  def initialize window
    @window = window
    @money, @ecology, @population = 5000, 25, 10
    @buildings = []
  end

  attr_reader :window, :money, :ecology, :population

  def add_building house
    @buildings << house
    @money -= house.cost
    @ecology += house.ecology
    @population += house.people
  end

  def draw
    @buildings.each do |e| e.draw end
  end

  def update
    @money = 0 if @money <= 0
    @money = 9999 if @money >= 9999
    @ecology = 100 if @ecology >= 100
    current = window.world.current
    if (current != false) && 25 < window.mouse_x && window.mouse_x < 750 && 25 < window.mouse_y && window.mouse_y < 350 && (window.button_down? Gosu::MsLeft)
      current.x = window.mouse_x
      current.y = window.mouse_y
      add_building current
      window.world.current = false
    end
  end
  
end