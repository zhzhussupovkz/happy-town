#!/usr/bin/env ruby
# encoding: utf-8
require "gosu"
require "singleton"

require_relative "core/world"
require_relative "core/panel"
require_relative "core/game_window"

GameWindow.instance.show