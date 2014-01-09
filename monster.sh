#!/bin/bash

clear

monster_x=4
monster_y=6

your_x=8
your_y=9

check_for_monster() {
  if [[ $your_x == $monster_x ]] && [[ $your_y == $monster_y ]]; then
    echo 'PAT HE GOT MEEEEE'
    exit 1
  fi
}

output_screen() {
  echo '............'
  for y in `seq 0 9`; do
    echo -n '.'
    for x in `seq 0 9`; do
      if [[ $your_y == $y ]] && [[ $your_x == $x ]]; then
        echo -n 'Y'
      elif [[ $monster_y == $y ]] && [[ $monster_x == $x ]]; then
        echo -n 'M'
      else
        echo -n ' '
      fi
    done
    echo '.'
  done
  echo '............'
}

output_screen

while true; do
  echo
  read -p 'Where do you want to go? (u,d,l,r) ' ans

  case $ans in
    u)
      if [[ $your_y != 0 ]]; then
        your_y=$((your_y-1))
      fi

      check_for_monster
      output_screen
      ;;
    d)
      if [[ $your_y != 9 ]]; then
        your_y=$((your_y+1))
      fi

      check_for_monster
      output_screen
      ;;
    l)
      if [[ $your_x != 0 ]]; then
        your_x=$((your_x-1))
      fi

      check_for_monster
      output_screen
      ;;
    r)
      if [[ $your_x != 9 ]]; then
        your_x=$((your_x+1))
      fi

      check_for_monster
      output_screen
      ;;
  esac
done
