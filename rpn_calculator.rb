

################################## CLASS #######################################

# Class with 2 methods to set up core functionality of the calculator.
class Calculator
# Set variable for the "stack" array and "total" for the digits entered.
def initialize
   @stack = Array.new
   @total = 0.0
  end
# Splits input and interates through the items (i). If "q" is found, the
# calculator will reset and end.
def calculate(input)
   input_to_array = input.split(' ')
input_to_array.each do |i|
    # Check if "q" has been entered to close the program.
    if i == "q"
     @stack.clear
     @total = 0.0
     p "Have a good day!"
     return
    end
    # Input check to make sure input matches valid format for RPN.
    # See functions section below.
    if valid_rpn(i)

     if i == '+'
      @total = map(@stack, method(:add), @total)
     elsif i == '-'
      @total = map(@stack, method(:subtract), @total)
     elsif i == '/'
      @total = map(@stack, method(:divide), @total)
     elsif i == '*'
      @total = map(@stack, method(:multiply), @total)
     else
      @total = i.to_f
      @stack << @total
     end
    else
    #Invalid error message if the input does not pass the valid_rpn function.
     p "invalid input recognized, please check your input string and press q to restart program"
     return "invalid input recognized"
    end
   end
return @total
end
################################ Functions #####################################

# Checks if the input matches the digit and operators to make sure they are
# the values we expect using regular expressions.
def valid_rpn(input)
   if !!(input =~ /\A\d|\+|\-|\*|\/\z/)
    return true
   end
return false
end
  # Takes in the stack and pops digits to two seperate variables.
  def map(stack, operation, total)
   input_one = stack.pop.to_f
   input_two = stack.pop.to_f
   # variables inputed into their respective function call based on operator.
   total = operation.call(input_two,input_one)

   stack << total
   return total
  end
# Functions for all 4 operators
# Addition
def add(input_one, input_two)
   return (input_one + input_two)
  end
# Subtraction
def subtract(input_one, input_two)
   return (input_one - input_two)
  end
# Division
def divide(input_one, input_two)
   return (input_one / input_two)
  end
# Multiplication
def multiply(input_one, input_two)
   return (input_one * input_two)
  end
end
