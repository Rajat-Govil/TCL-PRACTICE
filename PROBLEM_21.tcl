#Write a function that takes three arguments: nrow, ncol and char.
#Based on nrow and ncol, generate a pattern of the specified character.
#Example: Say nrow = 4, ncol = 3 and char = '+'
#The pattern should be printed as:
#    + + +
#    + + + 
#    + + +
#    + + +

proc pattern_print {nrow ncol char} {
puts "\n\n"
	for {set i 0} {$i < $nrow} {incr i} {
		for {set j 0} {$j < $ncol} {incr j} {
		puts -nonewline "$char "
		}
	puts "\n"
	}
}

puts "Enter number of rows: "
gets stdin rows

puts "Enter number of cols: "
gets stdin cols

puts "Enter character for printing: "
gets stdin character

puts [pattern_print $rows $cols $character]
