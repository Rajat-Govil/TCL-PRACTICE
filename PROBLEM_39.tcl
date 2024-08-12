#Create a function in TCL to find all the Armstrong numbers in a given list.
#An Armstrong number is a number whose sum of the cube of its digits is equal to the number itself.
#	Example: 153 is an Armstrong number because 1^3 + 5^3 + 3^3 --> 1 + 125 + 27 = 153

proc armstrong_number {num_list} {
	set count 	0
	set number 	0
	set len		0
	set digit	0
	set armsnum	{}
	set normnum	{}
	
	puts "Provided numbers are: $num_list"

	foreach i $num_list {
		set number $i
		set len [string length $number]

		for {set j 0} {$j < $len} {incr j} {
			#Fetch each individual digit using string index
			#Cube it and add it to count variable
			set digit [string index $number $j]
			set count [expr $count + [expr $digit ** 3]]
		}

		if {$count == $number} {
			lappend armsnum $number
		} else {
			lappend normnum $number
		}
		
		#Clear the count variable for the next number
		set count 0
	}

	puts "\nArmstrong numbers in {$num_list}:\t$armsnum"
	puts "Normal numbers in {$num_list}:\t\t$normnum"
}

puts [armstrong_number {153 746 371 92 370}]
