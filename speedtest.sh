FILE=/home/tl222/Desktop/speedtest_report.csv
sleep 10
i=1
while [ "$i" -ne 0 ]
do
  echo `date +"%Y %m-%d, %H:%M"`,`sudo speedtest -s 4505 | grep 'Latency\|Download\|Upload' | awk -v  FS='[:(]' {'print $2'} | tr "\n" ","` >> $FILE
  sleep 1800
done

