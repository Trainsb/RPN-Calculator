# RPN-Calculator #
A simple Reverse Polish Calculator


This is a Reverse Polish Notation (RPN) calculator that is run from the command line. Both files are written in Ruby. 

# Use
To use the RPN calculator:
1. Clone or Download both files into the same folder
2. Double click the ```run_rpn.rb``` file or invoke it from your command line with: ```folder\location\ruby run_rpn.rb```


This will start the application and load the below welcome screen:
```
 Welcome to the RPN Calculator, please read the instructions below!
 Press q press enter to exit
 Press any key and press enter to start the calculator
 ```
 
 After hitting the enter key you are ready to enter your RPN expression!
 
 ```
 Enter your postfix expression with space in-between, press enter to calculate:
 input expression >
 ```
 
 Commands that are currently supported:
 
 Values: negative ```-6```, float ```5.6```, and integers ```8``` are supported
 
 Operators: ```+``` ```-``` ```/``` ```*```
 
 
# Overall architecture:
This RPN is built of 2 files, one that does all the calculations(```rpn_calculator```) and the other that controls the users input with a while loop (```run_rpn```).

(```rpn_calculator```) is built around if/elsif statements that check what has been entered and then uses seperate functions to execute based on those if/elsif statements. It is fairly clean and simple (DRY) however the error handling could better. I did look at the option to use ```case``` and ```when``` paired with regular expressions for error handling; however that got messy and caused bugs fast.

(```run_rpn```) that controls the users input is very simple and standard for simple command line games. I played around with different options to improve the UX, but didn't want to make a simple tool confusing. I'm still on the fence about the ```Press any key and press enter to start the calculator``` as it can be overlooked and tripped over.

# Changes in the future # 
* Add more error handling
* Add more complex math operators
* Add a "clear" functionality

 
