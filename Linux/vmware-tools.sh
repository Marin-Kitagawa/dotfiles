if [[ $(lsb_release -a) | grep -q "Ubuntu" ]]; then
  mkdir /mnt/cdrom 2>/dev/null
  mount /dev/cdrom /mnt/cdrom
  cd /tmp
  tar xzvf *.tar.gz
  cd vmware-tools-distrib
  sudo ./vmware-install.pl
fi