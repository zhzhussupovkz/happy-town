#!/usr/bin/env ruby
# encoding: utf-8
require "gosu"
require "singleton"

require_relative "core/buildings/house"
require_relative "core/buildings/hospital"
require_relative "core/buildings/fire_post"
require_relative "core/buildings/police_post"
require_relative "core/buildings/house_red"
require_relative "core/buildings/house_grey"
require_relative "core/buildings/house_blue"
require_relative "core/main/town"
require_relative "core/main/world"
require_relative "core/panel/icon"
require_relative "core/panel/info_icon"
require_relative "core/panel/red_house_icon"
require_relative "core/panel/blue_house_icon"
require_relative "core/panel/grey_house_icon"
require_relative "core/panel/hospital_icon"
require_relative "core/panel/fire_post_icon"
require_relative "core/panel/police_post_icon"
require_relative "core/panel/money_icon"
require_relative "core/panel/tree_icon"
require_relative "core/panel/people_icon"
require_relative "core/main/panel"
require_relative "core/main/game_window"

GameWindow.instance.show