# Given an ip address 192.168.1.2. Change the ip address such that we have 192.1.168.2 as the output

set ip "192.168.1.2"
puts "IP Address :\t$ip"

set iplist [split $ip "."]
set newip {}

foreach i {0 2 1 3} {
	lappend newip [lindex $iplist $i]
}

set ip [join $newip "."]
puts "New ip address:\t$ip"
unset newip iplist
