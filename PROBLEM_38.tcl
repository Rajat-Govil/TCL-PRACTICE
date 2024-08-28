#Given a string of digits. Output all the contiguous substrings of length n in that string as they appear.
#For example, the string “49142” has:
#	  1-digit substrings:- 4, 9, 1, 4, 2
#	  2-digit substrings:- 49, 91, 14, 42
#	  3-digit substrings:- 491, 914, 142 
#	  4-digit substrings:- 4914 and 9142 

puts -nonewline "\nEnter the number: "
gets stdin number
set num_len	[string length $number]

if {$num_len == 0} {
	puts "\nERROR: No number is entered!"
} else {
	puts "\nNumber entered: $number"
 
	#Increment i to get 1,2,3,4...n digit series ranges for string range function
	for {set i 0} {$i < $num_len} {incr i} {
		set numlst	{}
			for {set j 0} {$j < [expr $num_len - $i]} {incr j} {
				set start 	$j	
				set finish	[expr $j + $i]
				lappend numlst [string range $number $start $finish]
			}		
		if {$i != [expr $num_len - 1]} {
			puts "\n[expr $i + 1] digit substrings: $numlst"
		} else {
			puts -nonewline ""
		}
	}
 
}
