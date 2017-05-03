#####################################################
#             XS7-SetupStorageDevices.sh            #
#####################################################
# Description: 									    #
#  Creates symlinks for storage devices in XS7      #
#####################################################
# Usage:					  			 	        #
#$ chmod +x /etc/rc.local     				        #
#$ cp XS7-SetupStorageDevices.sh /usr/local/     	#
#$ echo "/usr/local/XS7-SetupStorageDevices.sh" >>\ #
#$    /etc/rc.local								    #
#####################################################
#!/bin/bash

# Setup UUIDs for disks to be setup
DRIVE1=`blkid -U XXXXX` 
DRIVE2=`blkid -U XXXXX` 
DRIVE3=`blkid -U XXXXX` 

####################################################################################################

mkdir -p /dev/xapi/block/						# Make sure we setup the block dir
ln -s ${DRIVE1//[0-9]/} /dev/xapi/block/ 		# Symlink the whole disks into the block dir..
ln -s ${DRIVE2//[0-9]/} /dev/xapi/block/
ln -s ${DRIVE3//[0-9]/} /dev/xapi/block/