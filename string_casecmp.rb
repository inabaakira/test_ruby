#!/usr/bin/env ruby
#-*- mode: ruby; coding: utf-8 -*-
# file: string_casecmp.rb
#    Created:       <2019/02/07 09:24:55>
#    Last Modified: <2019/02/07 09:30:23>

class String
  # def <=>(other)
  #   casecmp(other)
  # end

  alias <=> casecmp

  def ==(other)
    casecmp(other) == 0
  end
end

str1 = "Hello"
str2 = "hello"

if str1 > str2
  puts "\"#{str1}\" is greater then \"#{str2}\"."
elsif str1 < str2
  puts "\"#{str1}\" is less then \"#{str2}\"."
elsif str1 == str2
  puts "\"#{str1}\" and \"#{str2}\" are equal."
end
