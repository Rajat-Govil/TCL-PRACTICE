#Create a function to emulate a calculator. 
#The calculator should take 2 numbers (can be integer, float, or negative) and the choice of operation from the user and should return the result. 
#A menu screen should be outputted to choose the required operation.

proc calculator {num1 num2} {
set result 0
	puts "\n\nFOLLOWING OPERATIONS ARE PRESENT:\n"
	puts "\t1. Addition"
	puts "\t2. Subtraction"
	puts "\t3. Multiplication"
	puts "\t4. Division"
	puts "\nEnter your choice of operation: "
	gets stdin choice

	switch $choice {
		1 {
			set result [expr $num1 + $num2]
			puts "$num1 + $num2 = $result"
		}

		2 {
			set result [expr $num1 - $num2]
			puts "$num1 - $num2 = $result"
		}

		3 {
			set result [expr $num1 * $num2]
			puts "$num1 * $num2 = $result"
		}

		4 {
			if {$num2 == 0} {
				puts "Cannot divide by zero!"
				calculator $num1 $num2
			} else {
				set result [expr $num1/$num2]
				puts "$num1 / $num2 = $result"
			}
		}

		default {
			puts "Wrong choice entered! Enter again!"
			calculator $num1 $num2
		}
	}
}

puts "Enter number 1: "	
gets stdin n1
puts "Enter number 2: "	
gets stdin n2

calculator $n1 $n2
