#FIND THE SMALLEST AND THE LARGEST ELEMENT IN A GIVEN LIST
set L1 {AND2X1 SDFFBWPNEGX2 SDFBWPOSX12 DFFTBWPNEGX24 INVX4 RCC}
#set L1 {abcd xyz m n0}
set len {}
set shortest 0
set longest 0 

foreach i $L1 {
  lappend len [llength [split $i ""]]
}
set len [lsort -integer $len]

foreach i $L1 {
  if {[llength [split $i ""]] == [lindex $len 0]} {
    set shortest $i
  } elseif {[llength [split $i ""]] == [lindex $len end]} {
    set longest $i
  }
}

puts "Shortest element: \t$shortest"
puts "Longest element: \t$longest"
