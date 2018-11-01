---
title: 'The R way'
description: 'R is a language that allows you to define your data analysis in
words.  This may be an unfamiliar way of working, but experience shows that
this approach quickly leads to a large increase in power and efficiency.'
---

## The R difference

```yaml
type: VideoExercise
key: 8961e8aa9e
xp: 50
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

The first exercise is to run the analysis from the video.

The data we are analyzing are a subset from this dataset from the World Bank
on gender and inequality:
<https://data.worldbank.org/data-catalog/gender-statistics>.

The subset is a selection of variables for every country, for each variable,
we have taken the mean values from 2012 through 2016.

Here is the data files:

* [variable description](http://bit.ly/gender-stats-variables)
* [data file](http://bit.ly/gender-stats-data).

As you have already seen, we will load some data, and have a look at the first few rows.

Don't worry about the details of how this works, we will come back to those over the rest of the course.

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

## Getting formal with variables

```yaml
type: VideoExercise
key: 500a13214d
xp: 50
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
