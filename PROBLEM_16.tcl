#Insert a given element in a list at the index specified without using 'linsert' command

set lst {a b c d e f}
puts "List provided: $lst"

#Variables
set newlst {}
set len [llength $lst]
set indexc 0
set flag 0

puts "\nEnter the element to insert: "
gets stdin element

puts "Element : $element"

puts "\nEnter index to enter element: "
gets stdin index 
puts "Index: $index"


#Check whether the index is within the range of the given list or not
if {$index < 0} {
	set indexc 0
} elseif {$index > $len} {
	set indexc $len	
} else {
	set indexc $index
}

#Insert the elements from original list till the provided index
for {set i 0} {$i < $indexc} {incr i} {
	lappend newlst [lindex $lst $i]
}

#Append the element to insert
lappend newlst $element
puts $newlst

#Append the remaining elements from the original list
for {set i $indexc} {$i <= [expr $len - 1]} {incr i} {
	lappend newlst [lindex $lst $i]
}
puts "New list: $newlst"
