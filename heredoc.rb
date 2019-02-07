#!/usr/bin/env ruby
#-*- mode: ruby; coding: utf-8 -*-
# file: heredoc.rb
#    Created:       <2019/02/05 12:50:03>
#    Last Modified: <2019/02/05 13:01:14>

puts '#' * 72
puts '# heredoc のスタック'
def some_method(one, two, three)
  puts "ONE"
  puts one
  puts "TWO"
  puts two
  puts "THREE"
  puts three
end

some_method(<<STR1, <<STR2, <<STR3 )
first piece
of text...
STR1
second piece
STR2
third piece
of text.
STR3

puts '#' * 72
puts '# indent を許す heredoc'
str = <<-EOF
  Each of these lines
  starts with a pair
  of blank spaces.
  EOF

puts str

require "active_support"
require "active_support/core_ext"
puts '#' * 72
puts '# heredoc の行頭の space を削除'
str = <<-USAGE.strip_heredoc
  This command does such and such.

  Supported options are:
    -h     This message
    ...
  USAGE

puts str
