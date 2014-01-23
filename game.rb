#!/usr/bin/env ruby
# encoding: utf-8
require "gosu"
require "singleton"

require_relative "core/buildings/house"
require_relative "core/buildings/house_red"
require_relative "core/buildings/house_grey"
require_relative "core/buildings/house_orange"
require_relative "core/buildings/house_blue"
require_relative "core/world"
require_relative "core/panel"
require_relative "core/game_window"

GameWindow.instance.show