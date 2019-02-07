#!/usr/bin/env ruby
#-*- mode: ruby; coding: utf-8 -*-
# file: each_byte_char.rb
#    Created:       <2019/02/06 10:56:05>
#    Last Modified: <2019/02/06 11:00:51>

str = "あいうえお"

puts "#" * 60
puts "each_byte for #{str}"
str.each_byte { |byte| print byte, " " }
puts

puts "#" * 60
puts "each_char for #{str}"
str.each_char { |char| print char,  " " }
puts

puts "#" * 60
puts "String#scan(/./) for #{str}"
chars = str.scan(/./)
chars.each { |char| print char, " " }
puts
