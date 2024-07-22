#Given a list L1 containing several sublists. Find the longest and shortest sublists.
set lst {{ICC2 SYNOPSYS APRISA SIEMENS CADENCE INNOVUS} {rgnd 45.36} {metals M1 M2 M3} {V12 V23 V34 V45 vias}}

puts "Original list: $lst\n"
set sublen {}

foreach i $lst {
  lappend sublen [llength $i]
}

set sublen [lsort -integer $sublen]

set shortest [lindex $sublen 0]         
set longest  [lindex $sublen end]       

foreach i $lst {
  if {[llength $i] == $shortest} {
    puts "Shortest sublist: \t{$i}"
  } elseif {[llength $i] == $longest} {
    puts "Longest  sublist: \t{$i}"
  }
}
