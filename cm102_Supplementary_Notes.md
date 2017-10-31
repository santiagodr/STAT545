# cm102 - Supplementary Notes and Exercises
Derek Cho  
October 26, 2017  


This document contains supplementary notes and exercises that were mentioned in class but are not included in the STAT 547M course notes for cm102.

## Write your own R function`


### Goals of this lecture

- Learn how to write a function in R
- Learn how to test for unexpected input and return informative error messages
- Learn to make more complex functions by adding additional inputs and outputs
- Learn to handle `NA`s with our functions
- Learn to use the generic `...` argument
- Learn formal function testing with `test_that()`



Note: You can follow along on the link to this lecture from the [syllabus](http://stat545.com/syllabus.html). Most of the material is taken from there. Jenny Bryan was the original author of the material used for this lecture.






## Questions

1. What is a function (or an R function)?

- We have been using them throughout the course but you may not have thought much about them
- A function is an object that takes some parameter(s) as input and returns (or prints) some output
- Example: `mean()` is a function that returns the average of the input parameters 


2. Why should I bother learning how to write and use them?

- Some functions are not found in base R functions or in any packages
- Writing functions reduces the amount of code that you need to write
- In general, if you use a chunk of code that does the same thing multiple times, write a function for it!
- Functions make it easier to make changes, you only need to change the function rather than each part of your code that uses it
- Functions are good for collaboration, your partners do not need to know how to write the function, they only need to know how to use it
- For research, I usually have a script with utility functions that are used by several other scripts.



## Problems for Part 1
1. Create a new function `mod_ten` that takes a number and returns the remainder after diving by 10.
 - For example: `mod_ten(15)` should return `5` since 15 divided by 10 is 1 with 5 as the remainder, and `mod_ten(1001)` should return `1` similarly.
 - Hint: You can use the modulus operator in R `%%` or come up with your own solution.
	
2. Add an if then stop statement into your function that returns an informative error message if the wrong input is added.

Optional: Try to break your function!


### Solution:


```r
mod_ten <- function(x){
  if(!is.numeric(x)) {
    stop('I am so sorry, but this function only works for numeric input!\n',
         'You have provided an object of class: ', class(x)[1])
  }
	x %% 10
}

mod_ten(15)
```

```
## [1] 5
```

```r
mod_ten(1001)
```

```
## [1] 1
```


## Problems for Part 2

1. Create a new function similar to our last function called `mod_x` that takes two arguments `value` and `divisor`. This is a general modulus function that can take any value of divisor. `value` is the input value that is passed through the function and `divisor` is the number that `value` is divided by. `mod_x` should return the remainder of `value` divided by `divisor`. Hint: use the modulus operator in R `%%`.
- For example: If `value` is 15, and `divisor` is 6, then `mod_x(15,6)` should return 3.

2. Set the default parameter value of `divisor` to be 10.

3. Add a `stopifnot()` statement into your function that returns an informative error message if the `divisor` is not ~~an integer~~ numeric.

Additional note: Perhaps this was a bad example to use in class since R does not recognize numbers like `10` as integers unless you coerce it to be an integer with something like `x <- as.integer(10)`. I've updated this example to check that the divisor is numeric rather than an integer. The modulus operator still works with decimals anyways!

Optional: Have `mod_x` return two numbers:
 1. the number of times the `divisor` goes into value ~~(an integer)~~. Hint: use the integer division `%/%` operator,.
 2. the remainder like before
 - Note: return can only return one object so you will have to combine them with `c()` or preferably `list()`

__Derek's Note__: It isn't mentioned in the course notes but I think it is useful to know how to return multiple values. In general, the return function in R can only return a single argument so you have to concatenate multiple values with `c()`. However, this is not always the best solution. 

For more complex functions with multiple outputs, you will want to define a name for each output and then return a `list()` of outputs. For example, the `lm()` function in R has several outputs like `coefficients` and `residuals`. Suppose that my `lm()` fit object was called `fit`. These can be accessed by the user with commands like `fit$coefficients` and `fit$residuals` because the type of the output of the `lm()` function is a list. You can specify the output of a function using `list(name1=variable1, name2=variable2)` and then return the list.

### Solution:


```r
mod_x <- function(value,divisor=10)
{
	stopifnot(is.numeric(divisor)) #This line has been modified since class (also removed incorrect "!")
	int <- value %/% divisor
	mod <- value %% divisor
	
	# return(c(int,mod))
	
	output <- list(quotient=int,remainder=mod)
	return(output)
}

mod_object = mod_x(27,5)
mod_object$quotient
```

```
## [1] 5
```

```r
mod_object$remainder
```

```
## [1] 2
```


