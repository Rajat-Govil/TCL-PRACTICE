#Given two lists. 
#Fetch the even numbers from the first list and odd numbers from the second list and store them in ‘even_list’ and ‘odd_list’. 
#Further, multiply the elements of ‘even_list’ and ‘odd_list’ and store the product in a list ‘product_list’.
#   Example:  even_list = {2 4}
#             odd_list  = {1 3 5}
#             product_list = {(2*1) (4*3) (1*5)} => {2 12 30}

set L1 {38 27 16 102 51 89}
set L2 {143 32 99 68 83 137}

puts "LIST 1:\t{$L1}"
puts "LIST 2:\t{$L2}"

#Variable declarations
set even_list {}
set odd_list {}
set product_list {}

foreach i $L1 j $L2 {
  if {[expr $i%2] == 0} {
    lappend even_list $i
  }
  
  if {[expr $j%2] != 0} {
    lappend odd_list $j
  }
}

puts "\nEven numbers from {$L1}:\t$even_list"
puts "Odd numbers from {$L2}:\t$odd_list"


foreach i $even_list j $odd_list {
  if {$i == "" && $j != ""} {
    lappend product_list [expr 1 * $j]
  } elseif {$j == "" && $i != ""} {
    lappend product_list [expr 1 * $j]
  } else {
    lappend product_list [expr $i * $j]
  }
}

puts "\nProduct of even_list and odd_list elements:\t$product_list"
