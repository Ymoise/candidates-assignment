#!/bin/bash
#add fix to exercise4-server2 here
#!/bin/bash
#add fix to exercise4-server1 here
sudo chown vagrant /etc/ssh/ssh_config
echo "host server1" >> /etc/ssh/ssh_config
echo "	  hostname 192.168.100.10" >> /etc/ssh/ssh_config
sudo chown root /etc/ssh/ssh_config