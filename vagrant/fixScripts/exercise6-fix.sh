#!/bin/bash
#add fix to exercise6-fix here
ARGS=("$@")
destination=${ARGS[-1]}
unset ARGS[${#ARGS[@]}-1]
sIp="$(ifconfig | grep -v 'eth1:' | grep -A 1 'eth1' | tail -1 | cut -d ':' -f 2 | cut -d ' ' -f 1)"
if [ "$sIp" = "192.168.100.10" ]; then
 dest_ip="server2"
else
 dest_ip="server1"
fi
total_size=0
for path in "${ARGS[@]}"
do
scp -q "$path" vagrant@$dest_ip:"$destination"
file_size="$(stat --printf="%s" "$path")"
total_size=$(( file_size+total_size ))
done
echo $total_size