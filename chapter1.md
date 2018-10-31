---
title: 'The R way'
description: 'R is a language that allows you to define your data analysis in words.   It is a completely different to something like Excel, where you do much of your analysis by clicking on the graphical user interface. '
---

## A first analysis in R

```yaml
type: NormalExercise
key: 2bafef99a3
lang: r
xp: 100
skills: 1
```

R does not work the same way as packages like Excel.

In Excel, you use the mouse and the menus to perform your analysis.

In R, we use words to describe our analysis.

The language we use is not quite English, but it is fairly close, as you will see.

The language we are using is *R*.  R is a programming language, that is designed specifically for data analysis and statistics.

In this exercise, we do a very simple analysis.  We load some data, and have a look at the first few rows.

Don't worry about the details of how this works, we will come back to that.

`@instructions`
You are starting with the DataCamp interface.  On the right you see an editor.  It has some R code, ready to run.

Click on the "Run Code" button to run the analysis.  You will see the output in the Window on the right.

When you've had a look, click "Submit Answer" to carry on to the next section.

`@hint`


`@pre_exercise_code`
```{r}

```

`@sample_code`
```{r}
# Read the data into memory
gender_data = read.csv('http://bit.ly/gender-stats-data')
# Show the first 6 rows
head(gender_data)
# Plot Health Expenditure Per Capita (x axis) against the Maternal Mortality ratio (y axis)
plot(gender_data$health_exp_per_cap, gender_data$mat_mort_ratio)
```

`@solution`
```{r}
# Read the data into memory
gender_data = read.csv('http://bit.ly/gender-stats-data')
```

`@sct`
```{r}
success_msg("Nicely done.")
ex() %>% check_object("gender_data") %>% check_equal()
```

---

## Starting with variables

```yaml
type: NormalExercise
key: 3101c3d7a1
xp: 100
```

Now you have run your first analysis in R.

Remember the first line in the code for the last exercise:

```
gender_data <- read.csv('http://bit.ly/gender-stats-data')
```

The line reads the data from <http://bit.ly/gender-stats-data> into memory, and gives the data a label, `gender_data`.

There are two parts to this line, on either side of the characters that look like a left-facing arrow: `<-`.

The part to the left of the `<-` is called the Left Hand Side (LHS).  This is the label we are going to use for our data.  In our case this is `gender_data`.

The part to right is called the Right Hand Side (RHS).  This is something that creates our data in memory. In our case this is `read.csv('http://bit.ly/gender-stats-data')`.

The label `gender_data` is also called a *variable*.

Variables are very important in R, and other programming languages.  Variables are names that make it much easier for us to refer to data, and to store data from previous steps.

Now go over to <https://campus.datacamp.com/courses/free-introduction-to-r/chapter-1-intro-to-basics-1> to learn more about:

* the DataCamp interface (that you are using now) and
* variables in R.

Just do that chapter from the tutorial.  When you get to the page *Create a vector* - stop, and come back to this page.

Now here is a little revision exercise.

`@instructions`
We are back to variables, after the exercises at <https://campus.datacamp.com/courses/free-introduction-to-r/chapter-1-intro-to-basics-1>.

Remember the fruit from those exercises?   Now we get exotic.

Create a variable called `my_pomegranates` and set it equal to 112.

Create another variable called `my_kiwis` and set it equal to 92.

Create a third variable called `my_exotic_fruits` and set it equal to the sum of `my_pomegranates` and `my_kiwis`.

`@hint`
Go back through <https://campus.datacamp.com/courses/free-introduction-to-r/chapter-1-intro-to-basics-1> for inspiration, if you can't remember how to set variables.

`@pre_exercise_code`
```{r}

```

`@sample_code`
```{r}
# Create a variable called "my_pomegranates" and set it equal to 112.

# Create another variable called "my_kiwis" and set it equal to 92.

# Create a third variable called "my_exotic_fruits" and set it equal to the sum of `my_pomegranates` and "my_kiwis"
```

`@solution`
```{r}
# Create a variable called "my_pomegranates" and set it equal to 112.
my_pomegranates <- 112

# Create another variable called "my_kiwis" and set it equal to 92.
my_kiwis <- 92

# Create a third variable called "my_exotic_fruits" and set it equal to the sum of `my_pomegranates` and "my_kiwis"
my_exotic_fruits <- my_pomegranates + my_kiwis
```

`@sct`
```{r}
success_msg("Well done - you are all over variables")
ex() %>% check_object("my_pomegranates") %>% check_equal()
ex() %>% check_object("my_kiwis") %>% check_equal()
ex() %>% check_object("my_exotic_fruits") %>% check_equal()
```

---

## Variables and types

```yaml
type: NormalExercise
key: 9c69cb7092
xp: 100
```

This tiny exercise is more revision from <https://campus.datacamp.com/courses/free-introduction-to-r/chapter-1-intro-to-basics-1>.

Remember that the first line of R code we ran in this tutorial was:

```
gender_data <- read.csv('http://bit.ly/gender-stats-data')
```

In the variables tutorial, you found how to find what type of thing a variable contained, using the `class` function.

You saw examples of numeric variables, and character variables.

`gender_data` is also a variable.  As you remember, a variable is a name that points to a thing.

What type of thing does `gender_data` point to?

`@instructions`
Use `class` to find out what type of thing `gender_data` points to.  Display the type.

`@hint`
To show what type of thing a variable `my_variable` points to, use `class(my_variable)`.

`@pre_exercise_code`
```{r}

```

`@sample_code`
```{r}
# First we create the variable again
gender_data <- read.csv('http://bit.ly/gender-stats-data')

# Here, write the code to display what type of thing "gender_data" is pointing to.
```

`@solution`
```{r}
# First we create the variable again
gender_data <- read.csv('http://bit.ly/gender-stats-data')

# Here, write the code to display what type of thing "gender_data" is pointing to.
class(gender_data)
```

`@sct`
```{r}
ex() %>% check_output("data\\.frame", missing_msg = "Did you display the class() of the gender_data?")
```

---

## Functions and the data frame

```yaml
type: NormalExercise
key: a43b4a146d
xp: 100
```

In the previous exercise you found that the `gender_data` variable points to a `data.frame`.

This is a new type of thing, that we have not seen before.  It is not a number or a character or a logical, it is a special type that contains a *table* of data.

The data frame object is rather like a spreadsheet in Excel, but more specialized.

In a typical R data analysis, we read the data into a data frame, and then we explore the data frame.

We will be exploring the `gender_data` data frame for the next exercises.

R has many utilities that are useful for telling us about data frames.  These are in the form of *functions*.

You have used functions in mathematics.  For example, you might write $y = sin(x)$.  Here `sin` is the _function_, and `x` (inside the parentheses) is the _argument_.  $sin(x)$ means - apply the function `sin` to the argument `x`, and return the value.

R functions work the same way.

In fact you have already seen a function.  Remember our first line:

```
gender_data <- read.csv('http://bit.ly/gender-stats-data')
```

On the Left Hand Side we have `gender_data` - the new name we give to the thing on the Right Hand Side.  The Right Hand Side is a *function call*.  The function is `read.csv`.  The argument is the URL `'http://bit.ly/gender-stats-data'`.  We *call* the `read.csv` function with the argument `'http://bit.ly/gender-stats-data'` to return a value, where the value is the data frame.

R has many useful functions that work on data frames.  Let's start with the function `dim`.

The `dim` function displays the number of rows and columns in the data frame.

`@instructions`
In the code window, you will see the code to call the `dim` function with the `gender_data` data frame as the argument.

Run the code to see what `dim` returns.  Submit the code to go on the next question.

`@hint`


`@pre_exercise_code`
```{r}
gender_data <- read.csv('http://bit.ly/gender-stats-data')
```

`@sample_code`
```{r}
# Call the "dim" function on the data frame.
# gender_data is already loaded
dim(gender_data)
```

`@solution`
```{r}
dim(gender_data)
```

`@sct`
```{r}
ex() %>% check_output('263[[:space:]]+8', missing_msg="Did you run dim(gender_data)")
```

---

## A dim question

```yaml
type: MultipleChoiceExercise
key: b3ee7c968c
xp: 50
```

What do you see?

`@possible_answers`
- `speed` is the response variable and `dist` is the explanatory variable
- `dist` is the response variable and `speed` is the explanatory variable

`@hint`


`@pre_exercise_code`
```{r}

```

`@sct`
```{r}

```
