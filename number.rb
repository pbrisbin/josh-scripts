#!/usr/bin/env ruby

# j moves down / k moves up / h moves left / l moves right
#
# put cursor at start of current number
#
# type "c" "w" (change word)
#
# type a number
#
# hit escape
#
# hit the space bar then type "r" (run program)
#
# if you get mixed up, press escape a few times and start over
#
NUMBER = rand(1000)

def get_number_from_the_user
  print "Enter a number: "

 gets.strip.to_i
end

while number = get_number_from_the_user
  if number == NUMBER
    puts "YOU WIN!"
    exit
  end

  if number < NUMBER
    puts "it's bigger than that, try again."
  end

  if number > NUMBER
    puts "it's smaller than that, try again."
  end
end
