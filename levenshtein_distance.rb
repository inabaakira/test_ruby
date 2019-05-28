#!/usr/bin/env ruby
#-*- mode: ruby; coding: utf-8 -*-
# file: levenshtein_distance.rb
#    Created:       <2019/02/20 18:54:19>
#    Last Modified: <2019/02/20 19:05:45>

class String

  def levenshtein(other, ins = 2, del = 2, sub = 1)
    # ins, del, sub are weighted costs
    return nil if self.nil?
    return nil if other.nil?
    dm = []    # distance matrix

    # Initialize first row values
    dm[0] = (0..self.length).collect { |i| i * ins }
    fill = [0] * (self.length - 1)

    # Initialize first column values
    for i in 1..other.length
      dm[i] = [ i * del, fill.flatten]
    end

    puts dm.inspect
  end

  s1 = "ACUGAUGUGA"
  s2 = "AUGGAA"
  d1 = s1.levenshtein(s2)
end
