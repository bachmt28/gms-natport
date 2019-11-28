#!/bin/bash
#jenkins quiet period feature
set -e
set -u 
set -o pipefail

echo 'This is main part. Script run aldready !'
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
echo $DIR
exit
source var.sh
source function.sh

#Check prerequire


##main
case $action in
    add )
        V_natport_add && V_natport_edit && V_natport_ena
		echo "$profilename;date +%d-%m-%Y;$EndDate" >> $WSP/listnatport.csv
		;;
    delete )
        V_natport_del
		;;
    edit )
        V_natport_edit ;;
	enable )
        V_natport_ena ;;
    disable )
        V_natport_dis ;;
    show )
        V_natport_show | egrep "$profilename|$private_ip";;
	* )
	exit ;;
esac
