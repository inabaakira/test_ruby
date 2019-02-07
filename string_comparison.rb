#!/usr/bin/env ruby
#-*- mode: ruby; coding: utf-8 -*-
# file: string_comparison.rb
#    Created:       <2019/02/06 12:24:56>
#    Last Modified: <2019/02/06 12:39:11>

class String
  alias old_compare <=>

  def <=>(other)
    a = self.dup
    b = other.dup
    # Remove punctiation
    a.gsub!(/[\,\.\?\!\:\;]/, "")
    b.gsub!(/[\,\.\?\!\:\;]/, "")
    # Remove initial articles
    a.gsub!(/^(a |an |the )/i, "")
    b.gsub!(/^(a |an |the )/i, "")
    # Remove leading/trailing whitespace
    a.strip!
    b.strip!
    # Use the old <=>
    a.old_compare(b)
  end
end

title1 = "Calling all Cars"
title2 = "The Call of the Wild"

# Originally this would print "yes"

if title1 < title2
  puts "yes"
else
  puts "no"    # But now it prints "no"
end
