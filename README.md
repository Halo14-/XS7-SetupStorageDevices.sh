# XS7-SetupStorageDevices.sh
Bash script to symlink whole physical disks into /dev/xapi/block using blkid in a persistent manner.

# Usage
Upload the script to a directory on the XenServer node and execute the following commands:-
```
$ chmod +x /etc/rc.local     				        
$ cp XS7-SetupStorageDevices.sh /usr/local/     	
$ echo "/usr/local/XS7-SetupStorageDevices.sh" >>/etc/rc.local	
```
Devices should now show under 'Removable Devices' on the node and can be attached to any VM and should persist on reboot(s).
