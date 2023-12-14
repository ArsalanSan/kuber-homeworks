# !/bin/bash

app1=0
app2=0

for (( i=1; i<10; i++ ))
do
  app1=$(($app1 + $(curl -s http://homework.ru | grep -o 'It is APP-1' | wc -l)))
  app2=$(($app2 + $(curl -s http://homework.ru | grep -o 'It is APP-2' | wc -l)))
done

echo "Count request APP-1: $app1 out of 10"
echo "Count request APP-2: $app2 out of 10"