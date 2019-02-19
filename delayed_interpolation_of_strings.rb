#!/usr/bin/env ruby
#-*- mode: ruby; coding: utf-8 -*-
# file: delayed_interpolation_of_strings.rb
#    Created:       <2019/02/19 13:56:00>
#    Last Modified: <2019/02/19 14:00:13>

str = '#{name} is my name, and #{nation} is my nation.'
name, nation = "Stephan Dedalus", "Ireland"
s1 = eval('"' + str + '"')
puts s1

str = proc do |name, nation|
  "#{name} is my name, and #{nation} is my nation."
end
s2 = str.call("Gulliver Foyle", "Terra")
puts s2
