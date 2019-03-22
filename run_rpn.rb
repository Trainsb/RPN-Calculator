#Import RPN calculator script
require_relative "rpn_calculator"
#Setting our RPN calculator to our own new constant
calculator = Calculator.new
#Starting the calculator introduction and directions
print " Welcome to the RPN Calculator, please read the instructions below!\n"
 print " Press q + enter at any time to exit\n"
 print " Press any key and press enter to start the calculator\n"
# Takes any key to move on to the While loop
input = "#{gets}"
 print "Enter your postfix expression with space in-between, press enter to calculate: \n"

 # While loop taking what the user input as an expression substitution inside a
 # string literal and inputing it into the calculate method as long as it is
 # not "q". Loop will continue until "q" is entered.
while (input != "q\n")
  print "input expression > "
  input = "#{gets}"
  print "result: #{calculator.calculate(input)} \n"
 end
print "Thank you!\n"
