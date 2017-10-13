# R Bar at The Universtiy of Chicago Harris School of Public Policy

R Bar is designed for everyone at Harris, whether you're just starting out in R or are here to learn some new things!

Over the course of your time at Harris you will find R to be a very useful tool for your classes, personal and personal projects. We will be hosting R Bar sessions twice a week and twice during lunch sessions for the first quarter. 

R Bar Schedule: 

- **Mondays**: 4:30 - 6:30, Room 344 (The NORC Conference room on the third floor)

- **Fridays**: 1:00 - 3:00, Room 140 B (On the first floor)

## Sign in Sheet

[Sign in Sheet During R Bar Sessions](https://docs.google.com/forms/d/e/1FAIpQLSczAozxtqX3nLecB4d0n_Ywl5JedqtrsFSxL-m-Y4hM3V_n3Q/viewform?usp=sf_link)

## Feedback form

[Feed Back Form](https://docs.google.com/forms/d/e/1FAIpQLScyjSbVxJxHKeR6amIiBdLE_2kFmlS2NQ96Je4rGzPKDgCSFA/viewform?usp=sf_link)

## Stata and R Bar Support For Harris Students

(Stata and R Support)[https://harris.uchicago.edu/gateways/current-students/campus-life/facilities-development/stata-r]

## Slack

Slack is a great way to keep update to date with the latest news. Join the Harris slack group 'Harristas' today!

[Slack Downloand](https://slack.com/)

Channel: r_bar


# Week 1 - The Basics

(Practice Exercises)[https://tomcurranuchicago.shinyapps.io/Week_1/]

## Downloading and Installing R

### Requirments:

Make sure that your computer is updated to the latest version of the operating system

If you don't update your computer you could run into installation issues:

You will need to things: 

1) R - the actual language that you use [here](https://www.r-project.org/)

2) RStudio - the development environment, the main tool for R [here](https://www.rstudio.com/products/rstudio/download/)

## Data Types in R:

Data has different types in R, and the datat type influence the operations and functions you can perform on it:

Type | Example | Uses
-----|---------|---------
Logical | TRUE, FALSE | 10 > 8 = TRUE
Numeric | 1, 43.1, 532.37 | 2 + 2 = 4
Character | "Hello", "Goodbye" | 'This is a string'

## Basic Operations in R

Basic operations:

Operation | Symbol | Example | Results
----------|--------|--------|---------
Addition  |    +   | 2 + 2 | 4
Subtraction  |    -   | 3 - 2 | 1
Division  |    /   | 4 / 2 | 2
Multiplication  |    *   | 8 * 2 | 16
Exponentiation  | ^ or ** | 3 ^ 2 or 3**2 | 9
Modulus | %% | 5 %% 2  | 2
Integer Division | %/% | 5 %/% 2 | 1

Modulus returns the remainder and integer division returns the result of division without the remainder

R follows normal order of operations - remember PEMDAS

## Declaring Variables:

Now that we know how to do some basic operations, we can learn how to store information for later use.

storing the information is simple: using `<-` is the assignment operation, the variable name goes on the left and the value you want to save goes on the right:

` x <- 2 + 2 `

` hello <- "Hello, world!" `

Variable names should be unique. If I repeat a variable name the most recent assingment of that variable will be the one used in proceeding operations where the variable is called. 


# Week 2 - Cleaning and Importing Data:

### To Practice, download these data sets:

Download as a .csv file from google drive:
[countries_geography](https://docs.google.com/spreadsheets/d/1c8Ff9kyANk85J6y3SLtULw_sDEttQQ2BFyYkKPkrYbc/edit?usp=sharing)

Download as a .xlsx file from google drive:
[countries_economy](https://docs.google.com/spreadsheets/d/1u9amOOKwaNRDP6mDh2Im1xze3PONpsJMN6SL1k8WJe0/edit?usp=sharing)
