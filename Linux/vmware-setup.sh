# Remember to set the  USER_PASSWORD variable globally
# Create the `rc.d` directory if it doesn't exist
echo $USER_PASSWORD | sudo -S pacman -R open-vm-tools
su
cd /etc/
if [ ! -d rc.d ]; then
  mkdir rc.d
  cd rc.d
  mkdir init.d
  for i in `seq 0 6`; do
    mkdir rc$i.d
  done
fi


#  Attach the VM Tools `.iso` image and mount using the below command
mount /dev/cdrom /mnt/cdrom
cd /tmp
tar zxpf /mnt/cdrom/VM*.gz
cd vmware-tools-distrib
./vmware-install.pl
# Leave everything to default
# rc0.d to rc6.d are inside /etc/rc.d/
# init scripts are placed under /etc/rc.d/init.d/
# daemons are installed inside /usr/sbin/
# etc...

# If there is an error stating that `vmware-tools.service` is not found,
echo "echo $USER_PASSWORD | sudo -S /etc/rc.d/init.d/vmware-tools start" >> ~/.xinitrc 
echo "echo $USER_PASSWORD | sudo -S /etc/rc.d/init.d/vmware-tools start" >> ~/.xsession

# Write a service to execute the vmware-tools (by `systemd`) and add enable it
# Example service with the script to be run can be found in vmware-tools.service
# Script contains the command enclosed within quotes in the line 29 & 30
