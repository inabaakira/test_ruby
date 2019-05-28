#!/usr/bin/env ruby
#-*- mode: ruby; coding: utf-8 -*-
# file: map.rb
#    Created:       <2019/03/14 12:02:51>
#    Last Modified: <2019/03/14 12:06:56>

# frozen_string_literal: true

numbers = [68, 65, 62, 61, 60]
result = numbers.map do|item|
  next unless item % 2 == 0
  item / 2
end
puts result
