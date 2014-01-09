#!/usr/bin/env ruby

the_phrase ="Last one"

def mask(str)
  str.each_char do |c|
    if [' ', ',', '.', '!'].include?(c)
      print c
    else
      if rand(10) < 6
        print '_'
      else
        print c
      end
    end
  end
  print "\n"
end

loop do
  puts
  puts mask(the_phrase)
  puts

  print 'your guess: '
  ans = $stdin.gets.chomp

  if ans == the_phrase
    puts 'YOU FINALLY WON'
    exit 0
  else
    puts 'NAH NAH U LOST'
  end
end
