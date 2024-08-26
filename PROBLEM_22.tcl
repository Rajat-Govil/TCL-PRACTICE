# List ‘numbers’ contains sublists with a country code and name. Generate 3 output lists given as:
#	          Ind_nums = {IND +918123456789 +917651231209}
#	          Usa_nums = {USA +44012345670 +44456700123}
#	          Uk_nums  = {UK +141567777 +141234567} 

set numbers { 	{+918123456789 IND}
		{+917651231209 IND}
		{+141567777 UK}
		{+44012345670 USA}
		{+141234567 UK}
		{+44456700123 USA} }


set IND_NUMS 	{IND}
set UK_NUMS 	{UK}
set USA_NUMS 	{USA}

foreach i $numbers {
	if {[lindex $i 1] == "IND"} {
		lappend IND_NUMS [lindex $i 0]
	} elseif {[lindex $i 1] == "UK"} {
		lappend UK_NUMS [lindex $i 0]
	} else {
		lappend USA_NUMS [lindex $i 0]
	}
}

puts "\nIndia numbers 	= \t$IND_NUMS"
puts "USA numbers 	= \t$USA_NUMS"
puts "UK numbers 	= \t$UK_NUMS\n"
