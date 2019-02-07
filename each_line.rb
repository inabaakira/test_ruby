#!/usr/bin/env ruby
#-*- mode: ruby; coding: utf-8 -*-
# file: eaches.rb
#    Created:       <2019/02/06 10:12:48>
#    Last Modified: <2019/02/06 10:22:39>

puts "#" * 72
puts "each_line"
str = "Once upon\na time...\nThe End\n"
num = 0
str.each_line do |line|
  num += 1
  print "Line: #{num}: #{line}"
end

puts "#" * 72
puts "each_line.with_index"
str = "Once upon\na time...\nThe End\n"
str.each_line.with_index do |line, num|
  print "Line: #{num}: #{line}"
end
