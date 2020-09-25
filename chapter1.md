---
title: 'The R way'
description: 'R is a language that allows you to define your data analysis in words.  This may be an unfamiliar way of working, but experience shows that this approach quickly leads to a large increase in power and efficiency.'
free_preview: true
---

## R is not Excel

```yaml
type: VideoExercise
key: 3d51e5b8dd
lang: r
xp: 50
skills: 1
video_link: //player.vimeo.com/video/298272711
```


---

## A first analysis in R

```yaml
type: NormalExercise
key: 2bafef99a3
lang: r
xp: 100
skills: 1
```

The first exercise is to run a version of the analysis from the video.

The data we are analyzing are a modified subset from this dataset from the
World Bank on gender and inequality:
<https://data.worldbank.org/data-catalog/gender-statistics>.

The subset is a selection of measures for every country. For each
measure, we have taken the mean of all available values from 2012
through 2016.  Here is the [data file URL](http://bit.ly/wb-gender-stats).

The measures (columns) in this file are:

* `fert_rate`: Fertility rate, total (births per woman).
* `gdp_us_billion`: GDP (in billions of current US dollars; 1 billion
  = 1000,000,000)
* `health_exp_per_cap`: Health expenditure per capita, PPP (constant 2011
  international dollars).
* `health_exp_pub`: Health expenditure, public (% of GDP).
* `prim_ed_girls`: Primary education, pupils (% female).
* `mat_mort_ratio`: Maternal mortality ratio (modeled estimate, per 100,000
  live births).
* `population`: Population in millions.

As you have already seen, we will load some data, and have a look at the first
few rows.  Each row has the data for one country.  Each column has the data for
one measure.

Don't worry about the details of how this works, we will come back to those
over the rest of the course.

`@instructions`
You are starting with the DataCamp interface.  On pane at the top right of this
window, you see an editor.

It has some R code, ready to run.

Click on the "Run Code" button at the bottom of this pane, to run the analysis.
You will see the output in the "R console" pane at the bottom-right of the screen.

In general, you can use the "Run Code" button to run the code in the editor to
see what output you get.  Use "Submit Answer" when you think the output looks right.

In this case, the output should be right without you having to make any
changes in the editor. When you've had a look at the output, click "Submit
Answer" to carry on to the next section.

`@hint`


`@pre_exercise_code`
```{r}

```

`@sample_code`
```{r}
# Read the data into memory
gender_data = read.csv('http://bit.ly/wb-gender-stats')
# Show the first 6 rows
head(gender_data)
# Plot Health Expenditure Per Capita (x axis) against the
# Maternal Mortality Ratio (y axis)
plot(gender_data$health_exp_per_cap, gender_data$mat_mort_ratio)
```

`@solution`
```{r}
# Read the data into memory
gender_data = read.csv('http://bit.ly/wb-gender-stats')
```

`@sct`
```{r}
success_msg("Nicely done.")
ex() %>% check_object("gender_data") %>% check_equal()
```

---

## R as a calculator

```yaml
type: NormalExercise
key: be79e8ff2b
xp: 100
```

You can use R simply as a calculator.  Many of us feel the need for
a calculator when we are calculating the tip and the total bill in
a restaurant, even if we don't admit it.

Our problem is the following.

Alex and Billie are at a restaurant, getting ready to order. They don't have
much money, so they are want to know what their bill will be, before they
order.

Alex is thinking of having the fish for £10.50, and Billie is leaning towards
the chicken, at £9.25.  First they calculate their combined bill.

`@instructions`
As before, you see an editor in the top-right pane.  It has the calculation,
ready to run.

The editor contains a line of R code.  As you might predict, R understands
numbers like `10.50`, and it understands `+` between the numbers as an
instruction to add the numbers.

But - the numbers aren't exactly right for Alex' and Billie's bill.  Edit them
so they match the numbers above, then click on "Submit Answer" to carry on to
the next section.

`@hint`


`@pre_exercise_code`
```{r}

```

`@sample_code`
```{r}
10.05 + 9.52
```

`@solution`
```{r}
10.50 + 9.25
```

`@sct`
```{r}
success_msg("That's correct.")
ex() %>% check_output("19\\.75", missing_msg = "Did you fix the amounts?")
```

---

## Comments

```yaml
type: NormalExercise
key: 272e40a948
xp: 100
```

Unlike a calculator, we can also put notes to ourselves, next to our
calculations, to remind us what they are for.   One way of doing this is to
use a "comment".

A comment is some text that the computer will ignore.  In R, you can make a comment by starting a line with the `#` (hash) character.

When R sees a line starting with `#`, it ignores the whole line.  The `#` at
the beginning of the line tells R that the text on that line is not code for
R to analyze and run, but something for humans to read.

Nearly all the bits of code you will see in this tutorial have comments in
them, to explain what the lines of code are doing.

`@instructions`
When you run the code on the right, it does not show any result.  In this case,
that is because the computer sees the `#` at the beginning of the line, and
then ignores the rest.

`@hint`


`@pre_exercise_code`
```{r}

```

`@sample_code`
```{r}
# This bit of text is for us to read, and the computer to ignore.
```

`@solution`
```{r}

```

`@sct`
```{r}
success_msg("Nothing!  That's what you should see!")
ex() %>% check_output("^$", missing_msg = "Oops - did you put some code in there by mistake?")
```

---

## What's the tip?

```yaml
type: NormalExercise
key: 3101c3d7a1
xp: 100
```

Let's continue with Alex and Billie's struggle with their bill.

They realize that they will also need to pay a tip.

They think a 15% tip is reasonable.  Now they need to multiply their total
bill by 0.15, to get the tip.  Given the bill is about £20, the tip will be
about £3.

In R, as for your calculator, `*` means multiplication.

For example, if you type `20 * 0.15` in R, and make it run, it will multiply
20 by 0.15 to get 3.

At the bottom right of the DataCamp interface, you should see a sub-window
called "R Console".  This is a scratch-space that you can use to type in
R code, and see what results you get.  It's useful for experimenting with
code that you aren't yet ready to put in the main editor pane.  Try it now by
typing `20 * 0.15` in the R Console.

`@instructions`
Back to Alex and Billie.  You can see their first attempt at calculating the bill, with tip, in the editor on the right.  We've estimated the answer should be somewhere near £3.  Try running the code in the editor, with "Run Code".  It isn't quite right.  What did they do wrong?  How do you think you could fix it?

`@hint`
Welcome back to the wonderful world of school mathematics!  Remember the
[order of operations](https://en.wikipedia.org/wiki/Order_of_operations).  If
you want to change the order of operations, you need parentheses around the
bits you want to calculate first.  For example to add 2 to 3 and *then*
multiply by 4, you would need `(2 + 3) * 4`.

`@pre_exercise_code`
```{r}

```

`@sample_code`
```{r}
# This is Alex and Billie's first attempt, but it's not quite right.
# Fix it to get the correct amount for a 15% tip.
10.50 + 9.25 * 0.15
```

`@solution`
```{r}
# This is Alex and Billie's first attempt, but it's not quite right.
# Fix it to get the correct amount for a 15% tip.
(10.50 + 9.25) * 0.15
```

`@sct`
```{r}
success_msg("Well done - you are mastering the R calculator.")
ex() %>% check_output("2\\.9625", missing_msg="The result should be near to £3")
```

---

## Bill plus tip

```yaml
type: NormalExercise
key: 95d0c57e70
xp: 100
```

We are starting to get to the point where we need variables, of which, more in
the next exercises.

But for now - try calculating the *final bill* for Alex and Billie using
R like a calculator, as we have until now.   The final bill is their original
total, *plus tip*.

`@instructions`
Edit the code in the editor to display Alex and Billie's final bill - that is
the total without tip, plus the tip.

`@hint`
Imagine Alex and Billie's orders were £5 and £6 respectively, then their bill
plus 15% tip would be `(5 + 6) + (5 + 6) * 0.15`.  Actually, this is the same
as `(5 + 6) * 1.15`.

`@pre_exercise_code`
```{r}

```

`@sample_code`
```{r}
# At the moment, this is just the total bill before adding the tip.
# Change this line to make this the total bill including the tip
10.50 + 9.25
```

`@solution`
```{r}
# This is just the total bill before tip.
# Change this line to make this the total bill including the tip
(10.50 + 9.25) + (10.50 + 9.25) * 0.15
```

`@sct`
```{r}
success_msg("Nice work - now you're on an R roll.")
ex() %>% check_output("22\\.7125", missing_msg="The result should be near to £23")
```

---

## Introduction to variables

```yaml
type: VideoExercise
key: 2b754578ad
lang: r
xp: 50
skills: 1
video_link: //player.vimeo.com/video/298409140
```


---

## Setting a variable

```yaml
type: NormalExercise
key: 97aa9fb069
xp: 100
```

We are back to Alex and Billie's bill. Alex was planing to have the fish for
£10.50, and Billie wants the chicken, at £9.25.  We found their final bill,
plus tip was `10.50 + 9.25 + (10.50 + 9.25) * 0.15`.

But - what if Alex changes her mind, and wants to have the aubergine gratin,
for £8.95?  We have to type the whole calculation out again, but change the
previous £10.50 (for the fish) to the current £8.95 (for the aubergine), like
this:

```
8.95 + 9.25 + (8.95 + 9.25) * 0.15
```

We would like a way to give *labels* to these numbers, to make our
calculations easier to read, and easier to repeat.

We need *variables*.

`@instructions`
In the editor on the right, you'll see that we have used the code `a <- 10.50`
to set the variable `a` to have the value 10.50; the cost of Alex' main
course. `b <- 9.25` sets the variable `b` to have the value 9.25; the cost of
Billie's main course.  Read the `<-` characters as "set equal to".

Then `a + b` adds the value for `a` to the value for `b` and shows the result.

Change the value for `a` to the price of the aubergine gratin, and run the
code, so `a + b` returns the new correct result.

`@hint`
Your code should include a line `a <- 8.95`.

`@pre_exercise_code`
```{r}

```

`@sample_code`
```{r}
# Calculate Alex and Billie's total bill (before tip).
a <- 10.50
b <- 9.25
a + b
```

`@solution`
```{r}
# Calculate Alex and Billie's total bill (before tip).
a <- 8.95
b <- 9.25
a + b
```

`@sct`
```{r}
success_msg("Well done - your first foray with food and variables.")
ex() %>% check_output_expr("18.2", missing_msg="The result should be near to £18")
```

---

## Calculating with variables

```yaml
type: NormalExercise
key: 40bc4fc39b
xp: 100
```

In the previous section, you saw:

```
a <- 8.95
b <- 9.25
a + b
```

`a` and `b` a *variables*.  Variables are labels attached to values.  The *label* "a" is now attached to the *value* 8.95, and the label "b" is attached to the value 9.25.  Here we used single letters as labels, but the labels could be any word.  In the example below, we've changed used the label "alex_main" instead of "a", and "billie_main" instead of "b".  Using longer labels for variables can be helpful to remind us about the meaning of the value they attach to.

We need *variables*.

`@instructions`
In the editor on the right, you'll see that we have used the code `a <- 10.50`
to set the variable `a` to have the value 10.50; the cost of Alex' main
course. `b <- 9.25` sets the variable `b` to have the value 9.25; the cost of
Billie's main course.  Read the `<-` characters as "set equal to".  Then `a
+ b` adds the value for `a` to the value for `b` and shows the result.

Change the value for `a` to the price of the aubergine gratin, and run the
code, so `a + b` returns the new correct result.

`@hint`
Your code should include a line `a <- 8.95`.

`@pre_exercise_code`
```{r}

```

`@sample_code`
```{r}
# Calculate Alex and Billie's total bill (including tip)
alex_main <- 8.95
billie_main <- 9.25
# "both_mains" gets the value for the total before applying tip.
both_mains <- alex_main + billie_main
# Total with tip.  Fill in after the ...
final_total <- both_mains ...
```

`@solution`
```{r}
# Calculate Alex and Billie's total bill (including tip)
alex_main <- 8.95
billie_main <- 9.25
# "both_mains" gets the value for the total before applying tip.
both_mains <- alex_main + billie_main
# Total with tip
final_total <- both_mains + both_mains * 0.15
```

`@sct`
```{r}
# state <- ex()
# code <- state$get('student_code')
# msg <- if (grepl('...', code, fixed=TRUE)) "Did you replace the '...' in the example code?" else NULL
msg <- 'Foo'
ex() %>% check_or(check_error(.,msg), check_object(.,"final_total")  %>% check_equal(eval = FALSE))
# check_error(state, incorrect_msg='My message')
# ft_state <- check_object(state, "final_total")
# st_env = state$get('student_env')
# sl_env = state$get('solution_env')
# msg <- if (st_env$final_total == sl_env$both_mains) 'Did you add the tip?' else NULL
# check_equal(ft_state, incorrect_msg=msg)
# success_msg("Good job, you are becoming versatile with variables")
```

---

## Experimenting in the console

```yaml
type: NormalExercise
key: 59b3b2803c
xp: 100
```

<!-- Guidelines for contexts: https://instructor-support.datacamp.com/en/articles/2375526-course-coding-exercises. -->

`@instructions`
<!-- Guidelines for instructions https://instructor-support.datacamp.com/en/articles/2375526-course-coding-exercises. -->
- Instruction 1
- Instruction 2

`@hint`
<!-- Examples of good hints: https://instructor-support.datacamp.com/en/articles/2379164-hints-best-practices. -->
- This is an example hint.
- This is an example hint.

`@pre_exercise_code`
```{r}

```

`@sample_code`
```{r}

```

`@solution`
```{r}

```

`@sct`
```{r}
# Examples of good success messages: https://instructor-support.datacamp.com/en/articles/2299773-exercise-success-messages.
```

---

## Types of things

```yaml
type: NormalExercise
key: 204a5f422b
xp: 100
```

<!-- Guidelines for contexts: https://instructor-support.datacamp.com/en/articles/2375526-course-coding-exercises. -->

`@instructions`
<!-- Guidelines for instructions https://instructor-support.datacamp.com/en/articles/2375526-course-coding-exercises. -->
- Instruction 1
- Instruction 2

`@hint`
<!-- Examples of good hints: https://instructor-support.datacamp.com/en/articles/2379164-hints-best-practices. -->
- This is an example hint.
- This is an example hint.

`@pre_exercise_code`
```{r}

```

`@sample_code`
```{r}

```

`@solution`
```{r}

```

`@sct`
```{r}
# Examples of good success messages: https://instructor-support.datacamp.com/en/articles/2299773-exercise-success-messages.
```

---

## Dealing with types

```yaml
type: NormalExercise
key: 6a1344c0b0
xp: 100
```

<!-- Guidelines for contexts: https://instructor-support.datacamp.com/en/articles/2375526-course-coding-exercises. -->

`@instructions`
<!-- Guidelines for instructions https://instructor-support.datacamp.com/en/articles/2375526-course-coding-exercises. -->
- Instruction 1
- Instruction 2

`@hint`
<!-- Examples of good hints: https://instructor-support.datacamp.com/en/articles/2379164-hints-best-practices. -->
- This is an example hint.
- This is an example hint.

`@pre_exercise_code`
```{r}

```

`@sample_code`
```{r}

```

`@solution`
```{r}

```

`@sct`
```{r}
# Examples of good success messages: https://instructor-support.datacamp.com/en/articles/2299773-exercise-success-messages.
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
gender_data <- read.csv('http://bit.ly/wb-gender-stats')
```

In the variables tutorial, you found how to find what type of thing a variable contained, using the `class` function.

You saw examples of numeric variables, and character variables.

`gender_data` is also a variable.  As you remember, a variable is a name that points to a thing.

What type of thing does `gender_data` point to?

`@instructions`
Use `class` to show the type of thing `gender_data` points to.

`@hint`
To show what type of thing a variable `my_variable` points to, use `class(my_variable)`.

`@pre_exercise_code`
```{r}

```

`@sample_code`
```{r}
# First we create the variable again
gender_data <- read.csv('http://bit.ly/wb-gender-stats')

# Here, write the code to display what type of thing "gender_data" is pointing to.

```

`@solution`
```{r}
# First we create the variable again
gender_data <- read.csv('http://bit.ly/wb-gender-stats')

# Here, write the code to display what type of thing "gender_data" is pointing to.
class(gender_data)
```

`@sct`
```{r}
ex() %>% check_output("data\\.frame", missing_msg = "Did you display the class() of the gender_data?")
```

---

## True, False, 0, 1

```yaml
type: NormalExercise
key: bb06e861b9
xp: 100
```

This tiny exercise is more revision from <https://campus.datacamp.com/courses/free-introduction-to-r/chapter-1-intro-to-basics-1>.

Remember that the first line of R code we ran in this tutorial was:

```
gender_data <- read.csv('http://bit.ly/wb-gender-stats')
```

In the variables tutorial, you found how to find what type of thing a variable contained, using the `class` function.

You saw examples of numeric variables, and character variables.

`gender_data` is also a variable.  As you remember, a variable is a name that points to a thing.

What type of thing does `gender_data` point to?

`@instructions`
Use `class` to show the type of thing `gender_data` points to.

`@hint`
To show what type of thing a variable `my_variable` points to, use `class(my_variable)`.

`@pre_exercise_code`
```{r}

```

`@sample_code`
```{r}
# First we create the variable again
gender_data <- read.csv('http://bit.ly/wb-gender-stats')

# Here, write the code to display what type of thing "gender_data" is pointing to.

```

`@solution`
```{r}
# First we create the variable again
gender_data <- read.csv('http://bit.ly/wb-gender-stats')

# Here, write the code to display what type of thing "gender_data" is pointing to.
class(gender_data)
```

`@sct`
```{r}
ex() %>% check_output("data\\.frame", missing_msg = "Did you display the class() of the gender_data?")
```
