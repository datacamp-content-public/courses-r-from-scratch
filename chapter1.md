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

You can use R simply as a calculator.  Many of us feel the need for a calculator when we are calculating the tip and the total in a restaurant.  We'll do that here.

Our problem is the following:

Alex and Billie are at a restaurant, getting ready to order. They don't have
much money, so they are calculating their expected bill before they order.

Alex is thinking of having the fish for £10.50, and Billie is leaning towards
the chicken, at £9.25.  First they calculate their combined bill.

`@instructions`
As before, you see an editor on the right.  It has the calculation, ready to run.

As you'd expect, we use `+` to add things in R.

You'll also see that there is a line before the calculation itself, starting
with `#`.  This is *comment*.  When R sees a line starting with `#`, it ignores it.  The `#` tells R that the text on that line is not code, but something for humans to read.  We often use comments to explain what the next line of code is doing.

Click on the "Run Code" button to see the total.

When you've had a look, click "Submit Answer" to carry on to the next section.

`@hint`


`@pre_exercise_code`
```{r}

```

`@sample_code`
```{r}
10.50 + 9.25
```

`@solution`
```{r}
10.50 + 9.25
```

`@sct`
```{r}
success_msg("That's correct.")
ex() %>% check_output("19\75", missing_msg = "Did you run the code?")
```

---

## Billy's bill

```yaml
type: NormalExercise
key: 272e40a948
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

## Variable interlude

```yaml
type: NormalExercise
key: 3101c3d7a1
xp: 100
```

Now you know about variables, go over to
<https://campus.datacamp.com/courses/free-introduction-to-r/chapter-1-intro-to-basics-1>
to learn more about:

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

## Setting a variable

```yaml
type: NormalExercise
key: 97aa9fb069
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

## Calculating with variables

```yaml
type: NormalExercise
key: 40bc4fc39b
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
