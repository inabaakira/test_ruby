#!/usr/bin/env ruby
#-*- mode: ruby; coding: utf-8 -*-
# file: range.rb
#    Created:       <2019/04/09 10:05:33>
#    Last Modified: <2019/04/10 10:26:41>

puts [("A".."Z").to_a, ("a".."z").to_a, ("0".."9").to_a, "_", "-"].join(nil)
puts [(" " .. "Z").to_a, ("^" .. "~").to_a].flatten.join(nil)

