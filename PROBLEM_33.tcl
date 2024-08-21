#Implement a TCL procedure that takes a list of cell names and their corresponding delays given as sublists as input
#It should do the following: 
#  a. Display the cell names and delays in a formatted fashion
#  b. Calculate the total delay by summing the delays for each cell

proc cell_delay_sum {delays} {
	set sum 0

	puts "\nCells with their delays(ns) are as follows:"
	foreach i $delays {
		puts [format "%-15s%.5f" [lindex $i 0] [lindex $i 1]]
		set sum [expr $sum + [lindex $i 1]]
	}
	return $sum
}

set cell_delays {{INV3TM1 0.073142} {NAND4X1M2 0.692285} {DFFNEGX1 0.16875} {CLKBUF3 2.44964} {SDFNEGX2 0.49814}
       		{BUFG5 1.64964} {FAX1 0.492283} {DFFSR 0.2124}}
puts "\nSum of the cell delays: [cell_delay_sum $cell_delays]"
