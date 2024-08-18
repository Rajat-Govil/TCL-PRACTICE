#Write a program to find the GCD of two given numbers using Euclidean Algorithm

proc euclid_gcd {n1 n2} {
	set rem 0
	set quo 0

	if {$n1 == 0} {
		return $n2
	} elseif {$n2 == 0} {
		return $n1
	} else {
		set rem [expr $n1 % $n2]
		set quo [expr $n1 / $n2]
	
		if {$rem == 0} {
			puts -nonewline ""
			return $n2
		} else {
			euclid_gcd $n2 $rem
		}
	}
}

puts "Enter the first number"
gets stdin num1

puts "Enter the second number"
gets stdin num2

puts "GCD of $num1 & $num2 is: [euclid_gcd $num1 $num2]"
