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
  end

  def draw
    @buildings.each do |e| e.draw end
  end

  def update
    @buildings.each do |e|
      @ecology += e.ecology
      @population += e.people
    end
    @ecology = 100 if @ecology >= 100
  end
  
end