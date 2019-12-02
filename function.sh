
#Set function
function V_natport_add()
{
echo -e "enable
configure nat
port_redirect add $profilename" | sshpass -p $PASSWORD ssh admin@$virgo3900 -p 2222
}

function V_natport_del()
{
echo -e "enable
configure nat
port_redirect delete $profilename" | sshpass -p $PASSWORD ssh admin@$virgo3900 -p 2222
}

function V_natport_show()
{
echo -e "enable
configure nat
port_redirect show" | sshpass -p $PASSWORD ssh admin@$virgo3900 -p 2222
}


function V_natport_edit()
{
echo -e "enable
configure nat
port_redirect $profilename
set public_prof $public_prof
set private_ip $private_ip
set proto $proto
set public_port_start $public_port_start
set public_port_end $public_port_end
set private_port_start $private_port" | sshpass -p $PASSWORD ssh admin@$virgo3900 -p 2222
}

function V_natport_dis()
{
echo -e "enable
configure nat
port_redirect $profilename
set status Disable" | sshpass -p $PASSWORD ssh admin@$virgo3900 -p 2222
}

function V_natport_ena()
{
echo -e "enable
configure nat
port_redirect $profilename
set status Enable" | sshpass -p $PASSWORD ssh admin@$virgo3900 -p 2222
}
