#!/bin/bash
mkdir public_html
cd public_html
echo "<a href="1.html">Start" > index.html

guess=$((RANDOM % 100 + 1))
for ((i=1; i<=100; i++))
do
  if [ $i -eq $guess ]
  then
  echo "Вы угадали число!" > $i.html
  fi
  if [ $i -gt $guess ]
  then
      echo "Загаданное число меньше" > $i.html
  fi

  if [ $i -lt $guess ]
  then
      echo "Загаданное число больше" > $i.html
  fi
done
for ((i=1; i<=100; i++))
do
echo "Число: $i" >> $i.html
done
  
