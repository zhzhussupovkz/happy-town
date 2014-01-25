# encoding: utf-8
=begin
/**
* @author zhzhussupovkz@gmail.com
* @copyright (c) 2014 Zhussupov Zhassulan zhzhussupovkz@gmail.com
*/
=end
#Panel
class Panel < Icon

  def initialize window
    super window, 'images/panel/panel.png', 0, 400, 1
    @icons = []
    @ui = Gosu::Font.new window, 'Monaco', 25
    generate_icons
  end

  def add_icon icon
    @icons << icon
  end

  def generate_icons
    add_icon RedHouseIcon.new window, 20, 435
    add_icon BlueHouseIcon.new window, 60, 435
    add_icon GreyHouseIcon.new window, 100, 435
    add_icon HospitalIcon.new window, 20, 500
    add_icon PolicePostIcon.new window, 60, 500
    add_icon FirePostIcon.new window, 100, 500
    add_icon MoneyIcon.new window, 700, 435
    add_icon TreeIcon.new window, 700, 475
    add_icon PeopleIcon.new window, 700, 515
  end

  def draw
    super
    @ui.draw("Houses" , 45, 410, 2)
    @ui.draw("Buildings", 35, 475, 2)
    @ui.draw("My town", 710, 410, 2)
    town = window.world.town
    @ui.draw(town.money.to_s, 740, 440, 2)
    @ui.draw(town.ecology.to_s, 740, 480, 2)
    @ui.draw(town.population.to_s, 740, 520, 2)
    @icons.each do |e| e.draw end
    year = (Time.at(Time.now.to_i)).strftime("%Y")
    @ui.draw("Copyright (c) #{year} by zhzhussupovkz", 200, 575, 2)
  end
  
  
end