echo "Start"
start_time=$(date +%s%3N)

for i in {1..30}
do 
	wget 172.15.117.33:80 &
done



wait
cd ..
stop_time=$(date +%s%3N)
diff=$(($stop_time-$start_time))
echo "time elapsed: $diff" >> dist_perf_tests.xls
