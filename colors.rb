#!/usr/bin/env ruby

COLOR = %w( red blue green black brown ).sample

def description(color)
  case color
  when 'red'
    "the color when you pull out a tooth"
  when 'blue'
    "The color of the st louis cardinals opponants in baseball"
  when 'green'
    "the color thats under your feet"
  when 'black'
    "the color of your eye after a fight"
  when 'brown'
    "the color of a tree but not the leaves"
  end
end

def get_color_from_the_user
  print "Enter a color that's #{description(COLOR)} "

  gets.strip.downcase
end

while color = get_color_from_the_user
  if color == COLOR
    puts "YOU WIN!"
    exit
  end

  puts "nope, try again"
end
