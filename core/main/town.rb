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

  attr_reader :money, :ecology, :population

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
  end
  
end