# -n or --non-interactive
# Without -n each line of text file will be executed and result will be shown


echo "describe 'test1'" | ./hbase shell -n

echo "describe 'test'" | ./hbase shell -n > /dev/null 2>&1