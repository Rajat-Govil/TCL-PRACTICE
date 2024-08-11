#Create a procedure to calculate the factors of a number provided
proc factors {num} {
	puts "Number entered:\t$num"

	set factorlist {1}
	set result 0

	for {set i 2} {$i < $num} {incr i} {
		set result [expr $num % $i]
		if {$result == 0} {
			lappend factorlist $i
		} else {
			puts -nonewline ""		
		}
	}

	lappend factorlist $num
	
	puts "Factors of $num are : $factorlist"
}

puts "Enter the number: "
gets stdin number
factors $number
