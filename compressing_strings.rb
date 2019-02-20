#!/usr/bin/env ruby
#-*- mode: ruby; coding: utf-8 -*-
# file: compressing_strings.rb
#    Created:       <2019/02/20 15:53:35>
#    Last Modified: <2019/02/20 16:00:04>

require "zlib"
include Zlib

long_string = ("abcdef" * 71 + "defghi" * 79 + "ghijkl" * 113) * 371
puts long_string.size

s1 = Deflate.deflate(long_string, BEST_SPEED)
puts s1.size
s2 = Deflate.deflate(long_string)
puts s2.size
s3 = Deflate.deflate(long_string, BEST_COMPRESSION)
puts s3.size
