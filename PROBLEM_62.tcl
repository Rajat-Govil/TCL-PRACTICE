#Given two lists first_names = {“Rajat” “Yash” “Krishna”} and last_names = {“Govil” “Khare” “Nabh”}. 
#Concatenate these two lists such that the resultant list should contain sublists of the first and last names together. 
#For example, w.r.t the given two lists, the output list ‘full_names’ should look like this:
#	full_names = {{Rajat Govil} {Yash Khare”} {Krishna Nabh}}

set fname     {"Rajat" "Yash" "Krishna"}
set lname     {"Govil" "Khare" "Nabh"}
set full_names {}

foreach i $fname j $lname {
  set intname {}
  lappend intname $i $j
  lappend full_names $intname
}

puts "List of full names: $full_names"
