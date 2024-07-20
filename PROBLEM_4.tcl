#REVERSE A LIST WITHOUT USING LREVERSE
set L1 {a b c d}
puts "Original list: {$L1}"

set rev {}

for {set i [expr [llength $L1] - 1]} {$i >= 0} {incr i -1} {
  lappend rev [lindex $L1 $i]
}

puts "Reversed list: {$rev}"
