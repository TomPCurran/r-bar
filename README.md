# R Bar at The Universtiy of Chicago Harris School of Public Policy

R Bar is designed for everyone at Harris, whether you're just starting out in R or are here to learn some new things!

Over the course of your time at Harris you will find R to be a very useful tool for your classes, personal and personal projects. We will be hosting R Bar sessions twice a week and twice during lunch sessions for the first quarter. 

R Bar Schedule: 

- **Mondays**: 3:30 - 5:30, Room 344 (The NORC Conference room on the third floor)
- **Fridays**: 1:00 - 3:00, Room 344 (The NORC Conference room on the third floor)


# Sign in Sheet

[Sign in Sheet During R Bar Sessions](https://docs.google.com/forms/d/e/1FAIpQLSczAozxtqX3nLecB4d0n_Ywl5JedqtrsFSxL-m-Y4hM3V_n3Q/viewform?usp=sf_link)

# Feedback form

[Feed Back Form](https://docs.google.com/forms/d/e/1FAIpQLScyjSbVxJxHKeR6amIiBdLE_2kFmlS2NQ96Je4rGzPKDgCSFA/viewform?usp=sf_link)

***

# R Resources:

[Download Cheatsheets](https://www.rstudio.com/resources/cheatsheets/)

### Data Science: 
[R For Data Science](http://r4ds.had.co.nz/data-visualisation.html)

[Data Exploration Cheat Sheet](https://www.analyticsvidhya.com/blog/2015/10/cheatsheet-11-steps-data-exploration-with-codes/)

[Data Camp](www.DataCamp.com)

### R Markdown
[R Markdown Cheatsheet](https://www.rstudio.com/wp-content/uploads/2015/02/rmarkdown-cheatsheet.pdf)

### Data Cleaning
[R Data Wrangling Cheat](https://www.rstudio.com/wp-content/uploads/2015/02/data-wrangling-cheatsheet.pdf)

### R Pubs
[R Pubs](www.rpubs.com)

### Shiny Apps:
[Shiny Apps](shinyapps.io)

### Data Visualization:

[R GGPlot2 Cheat Sheet](https://www.rstudio.com/wp-content/uploads/2015/08/ggplot2-cheatsheet.pdf)

[ggplot documentation](http://ggplot2.tidyverse.org/reference/index.html)

### Git:
[Straight forward Git Tutorial](http://rogerdudler.github.io/git-guide/)

[Interactive Git Tutorial](https://try.github.io/levels/1/challenges/1)
***

# Other Important Information:

### Stata and R Bar Support For Harris Students

[Stata and R Support](https://harris.uchicago.edu/gateways/current-students/campus-life/facilities-development/stata-r)

### Slack

Slack is a great way to keep update to date with the latest news. Join the Harris slack group 'Harristas' today!

[Slack Download](https://slack.com/)

Channel: r_bar

***

# The Basics
[Interactive Exercises](https://harrispolicy.shinyapps.io/week_1/)

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

## Working with Messy Data

[Click Here to Work with the Interactive Exercises](https://harrispolicy.shinyapps.io/week_2/)

In the real world, data is messy...really messy. Hardly ever are you going to get a data set that doesn't have missing values, data type errors, or is contained in one, neat file. Luckily, R makes things easy to fix your messy data. This week we covered things like:

  - Best practices for writing R Scripts
  - Importing different types of data files
  - Manipulating and editing dataframes
  - Summary, and descriptive statistics for dataframes in R
    
If you need a refresher on some of the basics, please make sure you go through the tutorial from week 1 on the basics [Week 1 - The Basics](https://tomcurranuchicago.shinyapps.io/Week_1/)

For the following exercises, we will be using these data sets:

Download file from google drive:
[countries_economy](https://docs.google.com/spreadsheets/d/1c8Ff9kyANk85J6y3SLtULw_sDEttQQ2BFyYkKPkrYbc/edit#gid=1973072008)

Download from google drive:
[countries_geographies](https://docs.google.com/spreadsheets/d/1u9amOOKwaNRDP6mDh2Im1xze3PONpsJMN6SL1k8WJe0/edit#gid=1530292399)

```
library(learnr)
library(tidyverse)
library(readxl)
knitr::opts_chunk$set(echo = FALSE)

geo <- read_csv('countries_geography.csv', col_names = T)

econ <- read_excel('countries_economy.xlsx', col_names = T, sheet = 'Sheet1')

countries <- merge(geo, econ, by = 'Country')
```

## Best Practices for Writing R Scripts

One of the most important things about writing R code is making it readable. Its great if you can read it, but chances are you will be sharing your code with other people! 

***

#### 1) Keep Your Code Organized:

R is great for working with multiple files at once, but sometimes when you're working with more than 1 data file, keep track of those files can become cumbersome. To resolve this, R has a useful function called 'Projects'. Projects are simply ways to associate files to one project, like a homework assignment. When you have your data sets, create a folder with a place to keep your data and R scripts. 

**To Create a Project:**

1) Click the button on the top right and click 'new project'

![Create a New Project](R-Bar_newproject.png)

2) Choose the 'existing directory' option

![Select Existing Directory](R-Bar_existingDirectory.png)

3) Select the Directory where you saved the data you want to use. This will now be the folder R associates with your project and where your R Scripts will be saved. 

![Choose your Directory](R-Bar_selectDirectory.png)

**Use an R Script NOT the console**

The console window in R Studio is typically used to run a single command at a time. It is not a great way to address statistical problems that are more complex and have more steps. To remedy this, we write R Scripts. A Script is essenitally a notebad/text editor for R that allows you to save your work, and write multiple commands at once and R will go line by line and run each command (that is unless there is no error in your code!).

To create a new script, click the left most button at the top of the R Studio window and select 'new script'

![Create A New Script](R-Bar_newScript.png)

***

#### 2) Comment on your code!
First, you should always comment on your code, telling the reader what your code **should** be doing.

Commenting is easy - simply write a `#` at the beginning of the line and describe whats happening in the following lines. You don't need to comment on every single line, but the more detail you can give the ready every 10 to 15 lines should be sufficient

```{r commenting, exercise=TRUE, exercise.lines = 15}

#This is a comment!

2+2

#This is a comment as well

print("Hello, world!")

#My comments should not be printing!

2 ^ 8

```

***

#### 3) Load the libraries you want to use and data used at the top of the script:

Thankfully, there are a lot of people using R, and even better is they put their code out there for you to use. Work smarter, not harder!

To install one of these packages, use the function called `install.packages()`. You only need to do this once, so I would recommend entering the command in the Console section of R Studio. We use the console so we can check for error messages (if there are any). 

The most important library that you will need is called `tidyverse` and is actually several different libraries in 1!

`install.packages("tidyverse")`

Once you run this command you won't have to reinstall the package every time you open R.

Now that you have it installed you need to be able to access the functions inside of the library. And as we mentioned before, the best practice is to load the libraries at the top to the script.

To load a script, use the `library()` function:

```
library(tidyverse)
```

You will see some messages in the console when your run the command indiciating that R is loading the several smaller packages that actually make up the 'tidyverse'. Don't worry where it says 'Confilct with tidy packages'...it should still work,

Next up, getting in your messy data!

## Importing Data

There are several different ways to import data into R, for now, we should focus on how to do this via code. Importing data with code will help automate and share your work.

Before moving forward, make sure you have the following libraries installed:

`readxl`

`tidyverse`

(If you don't know how to do this, please go to the previous section)

If you want to follow along on your own machine, I suggest creating a project (detailed steps in previous section)

***
You now have two files you want to work with: countries_economy.xlsx, and countries_geograph.csv

When working with data, its important to take note of what the file extension of the file is:

- **.xlsx** : excel 2013 or later format
- **.csv** : comma seperated value (usually opened with excel)
- **.dta** : stata data file 
- **.xls **: excel file used before 2013

we will be focusing on the .csv and .xlsx

Lucky for us, Tidverse as many useful functions for importing data, we just need to know which ones!

***

### Reading .csv Files
The first file we want to import is countries_geography.csv. Notice that the file extension is .csv. 

Because we're going to use this data set, known commonly as a dataframe in R, we want to save it so we can recall it easily. We can save it by using the assignment operator `<-`.

to read in .csv files, we want to use Tidyverse's `read_csv()` and we want to pass in two arguments (there are more but we'll focus on only 2):

1) the name of the file with extension in quotes

2) the argument `col_names = TRUE`, which tells R the first row in the file is the name of the columns, which saves them as variable names within R. 

**Do Not Use `read.csv()` to import csv files** 


```
library(tidyverse)

#Tidyverse is loaded. 
#Pro-tip: passing values/arguments into a function by using a comma, and pressing enter for a new line makes the code easier to see what value is #being passed in, see my code below:

geo <- read_csv('countries_geography.csv', 
                col_names = T)
```

Now our geography files is saved (for this session) as geo

***

### 
Reading in .xslx:

Similar to .csv files, we can use a special function to import .xlsx. For this we will need the `readxl` library. 

As always, make sure your library is installed and load it at the top of your script and we want to pass in three different arguments to the `read_excel` function in R:


1) the name of the file with extension in quotes

2) the argument `col_names = TRUE`, which tells R the first row in the file is the name of the columns, which saves them as variable names within R. 

3) The sheet number within excel. This is the name of the tab you see when you open excel. By default its going to open the first sheet, but if you want a different sheet to be loaded as a dataframe, you must specify the name of the sheet. 

```
library(readxl)

econ <- read_excel('countries_economy.xlsx',
                    col_names = T,
                    sheet = "Sheet1")
```

**Now you have two dataframes to work with!**

You can see what dataframes are loaded into you current workspace using the environment tab on the right hand side. 

![Data loaded into your current environment](R-Bar_dataEnvironment.png)

## Manipulating and editing dataframes:

You have data loaded into R, now what?

In many cases, your files will be to big to open in excel or other programs and will cause the system to crash. So to see what your data looks like we have a couple of options.

the most simple are `head()` and `tail()` which show the first six rows, and the last six rows. Try it out with the loaded `geo` or `econ` data sets

```{r head_tails, exercise = T, exercise.length = 10}

#Try using the head() function geo data set


#Try using the tail() function on the econ data set


```


while this is useful for small data sets, chances are you will be using VERY large data sets, and these functions aren't the greatest use of time. Also, when you run `head()` and `tail()` in your console, R Studio won't show all the data (even though it still there).

There are two really useful functions for looking at data

**str()**

In the excercise below, try running the str() command to explore the data

```{r str, exercise = T, exercise.length = 10}
#Tidyverse is loaded
#readxl is loaded
#geo and econ available in workspace:





```

Check that out! R should print out the names of each column in the data set, the type of data (see week1 for more info) and the first couple of rows of data. But the result is kind of messy and can be confusing to read...

**glimpse()**

Another great option in the tidyverse library is the function called `glimpse()` which is very similar to the base `str()` function but with slightly better functionality. You'll notice that the `str()` data set stoped showing the columns at a certain point, that is because R literally ran out space to print things and isn't smart enough to know how to change that. 

However, `glimpse()` will be smart enough and print every column's name, data type and first few rows to demonstrat

```{r glimpse, exercise = T, exercise.length = 10}
#Tidyverse is loaded
#readxl is loaded
#geo and econ available in workspace, try using glimpse() on the data sets:





```
Much better than str()!

***

We use `glimpse()` and `merge()` to explore the data sets, and sometimes our data is the wrong data type (see week 1 for more info on this)[https://tomcurranuchicago.shinyapps.io/Week_1/].

Luckily there is an easy fix if you find that there is a mismatch between the type of data that exists in the structure and the type of data you want. As you will see in the upcoming summary statistics section, having what looks like numbers, but R saved as a string, can impede calculations. Alternative there are some variables that are categorical, and you want to save a characters/strings:

Say our dataframe, dataframe, has a column that looks like a number, but R imported it as a string. Our goal is to find the mean of that column. But as you probably guessed, R can't find the mean of a bunch of strings, so we have to convert the data type. 

the simplest way to do this is using the `as.datatype()` method:

here, after the `as.` we want to designate what type of data we want to convert to. Lets say our column is a string and we want to convert to an integer we would write:

`as.numeric(dataframe$Column)`

This will convert all values in that column to a numeric data type. You can convert columns to different data types but be very careful which data type you choose to convert to!

to save the column as the new data type, simple assign it to the column using the assignment operator: 

`dataframe$Column <- as.numeric(dataframe$Column)`

***

Working with two data sets can be cumbersome, so lets be more effecient and create one unified data set to work with!

For now, we can use the `merge()` commange to accomplish create 1 data set. However, there are better options to merge data sets the ensure that the data is not compromised. The section entitled 'Advanced Joins' will go over these techniques, but is not necessary to fully grasp how to create 1 data set, but if you are going to work with R I **highly** encourage using these advanced functions and not `merge()`

#### Merge():

When we talk about joining dataframes in R, we need to know the structure of the dataframes themselves, and we can do that with the tidyverse function `glimpse()` that we just learned!

Using the `glimpse()` function on both geo and econ, figure out what the two data sets have in common:

```{r explore_data, exercise = T, exercise.length=15}
#Tidyverse is loaded
#readxl is loaded
#geo and econ available in workspace, try using glimpse() on the data sets:





```

What column do the data sets have in common?

If you guess 'Country', thats right! Country is going to become what we refer to as the 'Key', the thing that matches between two seperate dataframes. 

*When using strings (characters/words) as keys, R will only match or consider them the same key if they are spelled exactly the same. That means capitalization, spelling, and **white spaces** matter!*

Merging data sets means appening the columns of one data set onto another data set. One of the tricky things about merging is that R will only 
look for the key values in the dataframe that you are appending. That means if you have 10 rows with key values, and the dataframe you want to merge has 15 key values, the 5 rows that are not in the first data set will not show up in the merged dataframe. 

```{r merge_test, exercise = T}
#limit the geo dataframe to the first 5 rows
geo_test <- geo[1:5,]

#limit the econ dataframe to the first 7 rows 
econ_test <- econ[1:7, ]

#try to merge the geo_test and econ_test dataframes to see what happens to the extra 2 rows in econ_test
merge(geo_test, econ_test, by = "Country")

```

This is one of the many reasons why using glimpse() or str() is so important!

Another important thing to consider is that the key values in the dataframes are unique. When you have identical keys in the column you are trying to match, it can cause signficant issues and lead to bad data!

***

In our case, we know that econ and geo data sets have unique values and the same keys in both data sets, lets get ready to append the columns togethor using `merge()`:

`merge()` takes three arguments:

1) the data set to append columns to - these will be your left most columns: `x`

2) the data set who's columns you want to match and append to the dataframe in #1: `y`

3) the column you want R to match between the two data sets, your dataframe's key: `by = `

In our case, the column we want R to match on in both dataframes is named 'Country', so we can use the `by = ` argument. If you want to match the dataframes on columns with the same values but different names, it is best to use the `by.x = ` and the `by.y = ` arguments (remembering to seperate each argument by a comma)

Using the space below, try merging the econ and geo dataframes and see what happens.

your code should look like this: `merge(x, y, by = "ColumnName")` **OR** `merge(x, y, by.x ="Column1", by.y = "Column_One")`

```{r merging_econAndGeo, exercise = T, exercise.lines = 15}
#tidyverse and readxl are loaded
#geo and econ are loaded




```

Great! Now that you have the dataframes merged, its much more convenient!

***

A really useful function in tidyverse is called `mutate()`, which allows you to create a new column in the dataframe. The `mutate()` function comes in handy esepcially when you want the new column to be a function of other columns in your dataframe.


To use `mutate()`, two arguments:

1) the name of the dataframe you want to mutate

2) the name of the new column and what it should be set equal too:

The code should look something like this:

`mutate(dataFrame, new_column = Column1 - Column2)`

In the space below, try creating a new column within the available data sets: 

**Remember: if you want to save the new column to the dataframe you first assign the new column to the dataframe using the assignment operator, it should look something like this:

`dataframe <- mutate(dataFrame, new_column = Column1 - Column2)`

Also note that the new column will be at the end of the dataframe **

```{r mutating, exercise = T, exercise.lines = 15}
#tidyverse and readxl are loaded
#geo and econ are loaded




```

***

Often times, we need to order a dataframe by a column, with Tidyverse its easy!

To re-order a dataframe, we want to use `arrange()` function, that will sort based on the specified column name and preserve the integrity of the entire dataframe. Your `arrange()` function should look like this:

`arrange(dataframe, Column)`

By default, the `arrange()` function will return a dataframe order from smallest to largest value in the column you specified. To go from largest to smallest, simply place a minus sign (-) next to the column you want to sort on in the `arrange()` function

`arrange(dataframe, -Column)`

**Note that unless you save the arranged dataframe using the assignment operater `<-` R will not preserve the sort order the next time you use the dataframe **

Using the space below, practice using the `arrange()` function to find the most and least populated countries. 

```{r arrange, exercise = T, exercise.lines = 10}
#Tidyverse and readXL is loaded
#countries, geo, and econ dataframes are loaded


```

***

Often times we need only certain values of the data set in a particular column. For example we if we only want countries with populations > 1000000000, countries that don't meet that criteria can get in the way when we start doing summary statistics.

In this case, tidyverse has the function callled `filter()` where we can pass in a set of criteria that rely on logical operators to decided whether to keep or exclude a resulting data set:

`filter(dataframe, Column1 < 100 & Column2 > 200 )`

as you can see the second argument is a set of criteria for R to look for. In this case it requires that the row have a value greater than 100 in column 1  **AND** a value less than 200 in column 2. In this case, only values that meet both criteria will be shown in the new data set. However, we can also use the operator OR, represented by the symbol `|` as well as NOT EQUAL TO, represented by `!=`. In R, when you see an exclimation point it means "do the opposite". For example if I wrate `!TRUE` it will evaluate to `FALSE` and vice versa. In our case if we write `!=` it will include everything that is not equal to the value on the right. 

Here is a list of logical operators in R:

Symbol | Meaning
-------|----------------------------------------
`==` | equal to
`>=` | greater than or equal to
`<=` | less than or equal to
`>` | greater than
`<` | less than
`!=` | not equal to
`&` | AND 
`|` | OR


Try Using the `filter()` function in the space below

```{r logical_operators, exercise = T, exercise.lines = 10}

#Tidyerse is loaded
#you have econ, and geo data sets available to use.


```


## Summary and Descriptive Statistics

Now that we have our data ready to go, we can finally get to the fun part, statistics!

Lucky for us, someone has already done the hard work for us with Tidyverse and R to calculate stats!

You can think of each column in a dataframe as a list of information and you can access that list by writing `dataFrame$ColumnName`. 

Try using that syntax to print out all of the country names in the newly merge data set, which we have saved as `countries`:

```{r print_list, exercise = T, exercise.lines = 10}
#Tidyverse and readXL are loaded
#you have counries, geo, and econ available in your work space




```

Your command should have resulted in 227 different countries being printed to the console. This is very useful short hand for accessing single columns 

Say you only want the first 5 countries, and columns 3 and 5. You can use the square brack notation in R to accomplish this:

`dataframe[1:5, c(3,5)]`

where the name of the dataframe followed by [] (no spaces between the dataframe and [ ]). The first part of the [ ] notation are the rows. Using the `:` is short hand of saying `x through y` so that you don't have to type out all of the row numbers you want. the second part of the bracket notation ([ ]) are columns. in this case we use the c() function to say columns 3 and 5, but not four. The same c() function can be used to call specific rows, for example, say you want rows 1, 154, and 3 it would look like this: `dataFrame[c(1,3,154),]`. This will return all columns for those specific rows. If you want to return all columns or rows, simply leave the argument before or after the , blank. 

Try practicing the bracket notation in the space below:

```{r bracket_notation, exercise = T, exercise.lines = 10}
#Tidyverse and readXL is loaded
#countries, geo, and econ dataframes are loaded


```

***

Now that we know how to call specific columns and rows for dataframes, lets apply some stats to our data!

Here are some of the most important functions that you will use the quarter:

Function    | Description 
------------|---------------------------------------------
`mean()`    | calculates the average of a list of numbers
`summary()` | calculates the Min, 1st Quartile, Median, Mean, 3rd Quartile, Max and the amount of NA's in the list if present
`sd()`      | calculates the standard deviation
`var()`     | calculates the variance of a list
`sum()`     | sums the list of numbers

When we looked at our data in the first sections, you may have noticed that there were some missing values in some of the columns, which show up as 'NA'. This means that there is no value for the country in that column. If R sees that when calculating something like `mean()` it will throw you an error. If this is the ase, R has a handy argument for functions called `na.rm` where if you set it equal to true inside the `mean()` function, will skip over those NA values when calculating the mean.

Note that some functions don't need the `na.rm = ` argument. To check which do and do not need it, use the `?function` syntax to look up documentation.

*Becuase it skips over the `NA` values, R calculates the mean of the available data*

Your argument should look like this:

`mean(dataframe$Column, na.rm = TRUE`)

Try calculating the mean of different columns in countries with and without the `na.rm` argument

```{r na_rm_test, exercise = T, exercise.lines = 7}
#countries, geo and econ are avaiable to your workspace
#Tidyverse and readxl are available to use


#Try calculating the mean() of Population in countries



```

***

# Grouping and Summarizing
[Interactive Exercises](https://harrispolicy.shinyapps.io/R_Bar_Group_By/)

***
# Grouping Revisted and Regression:
[Interactive Exercises](https://harrispolicy.shinyapps.io/winter_2018_week_2/)

# Data Practice Sets:

[Height and Weight](https://docs.google.com/spreadsheets/d/10F9unpFIcvb-upPTFTJ_B8E4Vj_M-Jmp03qqWwBiRZg/edit?usp=sharing)


## Feedback

Questions? Comments? Want to learn something specifc? Let me know!
[Feedback](https://goo.gl/forms/wX8Kkjd6FDwf40tP2)


