#FIND THE SMALLER LIST OUT OF TWO LISTS AND APPEND ZEROS TO MAKE IT EQUAL IN LENGTH TO THE LARGER LIST
#set L1 {AND2X1 SDFFBWPNEGX2 SDFBWPOSX12 DFFTBWPNEGX24 INVX4 RCC}
#set L2 {SDFBWPOSX12 DFFTBWPNEGX24 INVX4 RCC}
set L1 {a b c d}
set L2 {a b}

puts $L1 
puts $L2

set len1 [llength $L1]
set len2 [llength $L2]

set zero [expr abs($len1 - $len2)]

if {$len1 > $len2} {                                #L1 is longer than L2
  for {set i 0} {$i < $zero} {incr i} {
    lappend L2 0
    }
  } elseif {$len1 < $len2} {
    for {set i 0} {$i < $zero} {incr i} {
    lappend L1 0
    }
  }

puts "\nAfter appending zeros..."
puts $L1 
puts $L2
