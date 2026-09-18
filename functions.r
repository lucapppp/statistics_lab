#functions

#they're useful cause i can recall them when i want, and it's more ordinate

#In programming and mathematics, saying f is a function of x means two key things
#-x is the input parameter: x is a variable passed into f that the function uses to compute its result.
#-the output depends on x: The result returned by f(x) changes based on the specific value you assign to x.

#Heaviside step function
#The Heaviside step function is the functions that is 0 if the value is negative, otherwise is 1
Heaviside_step_function <- function(x){ #i say is a function of x
    if(x < 0) return(0) #it goes out of the function and gives 0 as value
    return(1) #this is a way to write if withous parethesis
}
#now i can call my function
Heaviside_step_function(-2)
Heaviside_step_function(1)
Heaviside_step_function(0)

#if i have complex code, loops of loops and i dont know how to spot errors, i can use the function browser()
Heaviside_step_function <- function(x){
    browser()
    if(x < 0) return(0) 
    return(1) 
}
Heaviside_step_function(-2)
# when i call a function it writes in the executes till browser and it writes in the terminal browse[1]>. If i write n it males the debug of the next line. This way i can run line for line to spot the error
# to exit from browser() i type Q
