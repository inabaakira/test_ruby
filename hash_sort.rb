#!/usr/bin/env ruby
#-*- mode: ruby; coding: utf-8 -*-
# file: hash_sort.rb
#    Created:       <2019/04/08 11:16:31>
#    Last Modified: <2019/04/08 12:46:57>

# frozen_string_literal: true

arr = [ 
  {is_default: false, updated_at: "2019-04-01T11:25:19.000+09:00"},
  {is_default: true, updated_at: "2019-04-01T11:25:19.000+09:00"},
  {is_default: false, updated_at: "2019-04-01T11:25:19.000+09:00"},
  {is_default: false, updated_at: "2019-04-04T11:25:19.000+09:00"},
  {is_default: true, updated_at: "2019-04-05T11:25:19.000+09:00"},
  {is_default: false, updated_at: "2019-04-06T11:25:19.000+09:00"}
]

arr.sort! do |a, b|
  a[:is_default] == b[:is_default] ? b[:updated_at] <=> a[:updated_at]
  : a[:is_default] ? -1
  : 1
end

puts arr
