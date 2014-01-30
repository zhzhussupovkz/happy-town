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
    super window, 'images/panel/panel.png', 0, 300, 1
    @info_icons, @main_icons = [], []
    @ui = Gosu::Font.new window, 'Monaco', 25
    generate_icons
  end

  def add_info_icon icon
    @info_icons << icon
  end

  def add_main_icon icon
    @main_icons << icon
  end

  def generate_icons
    add_info_icon RedHouseIcon.new window, 20, 335
    add_info_icon BlueHouseIcon.new window, 60, 335
    add_info_icon GreyHouseIcon.new window, 100, 335
    add_info_icon HospitalIcon.new window, 20, 400
    add_info_icon PolicePostIcon.new window, 60, 400
    add_info_icon FirePostIcon.new window, 100, 400
    add_info_icon MillIcon.new window, 20, 435
    add_info_icon FactoryIcon.new window, 60, 435
    add_info_icon ShopIcon.new window, 100, 435
    add_main_icon MoneyIcon.new window, 550, 335
    add_main_icon TreeIcon.new window, 550, 375
    add_main_icon PeopleIcon.new window, 550, 415
  end

  def draw
    super
    @ui.draw("Houses" , 45, 310, 2)
    @ui.draw("Buildings", 35, 375, 2)
    @ui.draw("My town", 560, 310, 2)
    town = window.world.town
    @ui.draw("#{town.money}$", 585, 340, 2)
    @ui.draw(town.ecology.to_s, 585, 380, 2)
    @ui.draw(town.population.to_s, 585, 420, 2)
    @info_icons.each do |e| e.draw end
    @main_icons.each do |e| e.draw end
    year = (Time.at(Time.now.to_i)).strftime("%Y")
    @ui.draw("Copyright (c) #{year} by zhzhussupovkz", 175, 450, 2)
  end

  def clean
    @info_icons.each do |e| e.get_info = false end
  end

  def update
    @info_icons.each do |e|
      if e.x < window.mouse_x && window.mouse_x < e.x + 40 && e.y < window.mouse_y && window.mouse_y < e.y + 40 && (window.button_down? Gosu::MsLeft)
        clean
        e.get_info = true
      end
      e.build_new_obj
    end
  end
  
  
end