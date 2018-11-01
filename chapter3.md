---
title: 'Working with columns'
description: 'Data frames contain data, arranged in columns.  In this chapter we get the column data and analyze it, using descriptive statistics.'
---

## Getting columns with dollars

```yaml
type: NormalExercise
key: 12aa3a3b6f
xp: 100
```

We have already seen that a data frame consists of rows and columns.

We often want to look at the data in a particular column.

One common way of getting at a columns in a data frame is to use the `$` between the name of the data frame and the name of the column.

For example, to display all the values in the `health_exp_per_cap` column of
the `gender_data` data frame, I could execute this code:

```
gender_data$health_exp_per_cap
```

Try it in the R Console.

`@instructions`
Use the `$` method to display all the values in the `mat_mort_ratio` column of `gender_data`

`gender_data` is already loaded.

`@hint`
You should have something like `gender_data$` followed by the column name.

`@pre_exercise_code`
```{r}
gender_data <- read.csv('http://bit.ly/gender-stats-data')
```

`@sample_code`
```{r}
# Display all the values in the 'mat_mort_ratio' column of 'gender_data'

```

`@solution`
```{r}
gender_data$mat_mort_ratio
```

`@sct`
```{r}
state <- ex()
check_output(state, '444\\.00',
             missing_msg='Expecting to see first value')
check_output(state, '398\\.00',
             missing_msg='Expecting to see last value')
```

---

## Columns as variables

```yaml
type: NormalExercise
key: 6bdb5ddcb1
xp: 100
```

This is a little revision and expansion on variables.

In the exercise above, you displayed all the values for the `mat_mort_ratio` column with:

```
gender_data$mat_mort_ratio
```

Instead of printing out the values in the column, we may want to give the
column values their own name.  We do this in exactly the same way as we do it
when setting other variables.  For example, here we give the label
`mat_mort_vals` to the `mat_mort_ratio` column.

```
mat_mort_vals <- gender_data$mat_mort_ratio
```

`@instructions`
Make a new variable `health_exp_col` that points to the `health_exp_per_cap` column in the `gender_data` data frame.  Display the contents of your new `health_exp_col` variable.

`@hint`
You should start with a line starting `health_exp_col <- gender_data$`.

`@pre_exercise_code`
```{r}
gender_data <- read.csv('http://bit.ly/gender-stats-data')
```

`@sample_code`
```{r}
# Make a variable 'health_exp_col'.
# It should points to the 'health_exp_per_cap' column.


# Display the contents of 'health_exp_col'
```

`@solution`
```{r}
health_exp_col <- gender_data$health_exp_per_cap
health_exp_col
```

`@sct`
```{r}
state <- ex()
check_object(state, "health_exp_col") %>% check_equal()
check_output(state, '161\\.13803',
             missing_msg='Expecting to see first value of health_exp_col')
check_output(state, '115\\.51988',
             missing_msg='Expecting to see last value of health_exp_col')

```

---

## What's in an NA?

```yaml
type: MultipleChoiceExercise
key: 7e49bc6626
xp: 50
```

You just made a variable `health_exp_col` that points to the
`health_exp_per_cap` column of the `gender_data` data frame.  Then you
displayed them.

Have a look at these again, by running `health_exp_col` in the R Console.

Look at the last ten values or so. `health_exp_col`.  Most of these are numbers, but a couple are `NA`.

`NA` is R's code meaning "Not available".  For our case, some countries (rows)
had no data available for health expenditure per capita from 2012 through 2016.

Use the R Console to show the last 6 rows in the data frame with
`tail(gender_data)`.  Look at the `health_exp_per_cap` column.

The last two countries with `NA` for `health_exp_per_cap` are:

`@possible_answers`
- "American Somoa" and "Andorra".
- "Virgin Islands (U.S)" and "West Bank and Gaza".
- "Zambia" and "Zimbabwe".

`@hint`
Make sure you are looking at the _last_ 6 rows.  Find the NAs in the
`health_exp_per_cap` column, and look at the corresponding values for
`country`, for those same rows.

`@pre_exercise_code`
```{r}
gender_data <- read.csv('http://bit.ly/gender-stats-data')
health_exp_col <- gender_data$health_exp_per_cap
```

`@sct`
```{r}
msg1 <- "Did you use 'head(gender_data)' instead of 'tail(gender_data)'?"
msg2 <- "Yes, those are the last two countries with NA in 'health_exp_per_cap"
msg3 <- "Check that you are looking for the countries with NA in 'health_exp_per_cap"
ex() %>% check_mc(2, feedback_msgs = c(msg1, msg2, msg3))
```

---

## What's a mean to do?

```yaml
type: MultipleChoiceExercise
key: 34aa5cb6e7
xp: 50
```

We have a variable `health_exp_col` that points to the `health_exp_per_cap`
column of the `gender_data` data frame.  We just found out that some countries have missing data for this column - they have `NA` values.

Now consider what would happen if we calculate a mean over these values.  Some things R could do are:

- refuse to do a calculation with `NA` values and return `NA`.
- refuse to do a calculation with `NA` values and show an error.
- drop all the NA values, and take the mean of the rest.

Run `mean(health_exp_col)` in the R Console and look at the result.  What does
R do?

`@possible_answers`
- refuses to do a calculation with `NA` values and returns `NA`.
- refuses to do a calculation with `NA` values and shows an error.
- drops all the NA values, and takes the mean of the rest.

`@hint`
Have a look at the console result.  Was there an error?  Is there a number (the
mean of the not-missing values)?  Or is there an `NA`?

`@pre_exercise_code`
```{r}
gender_data <- read.csv('http://bit.ly/gender-stats-data')
health_exp_col <- gender_data$health_exp_per_cap
```

`@sct`
```{r}
msg1 <- "Yes - the mean returns an NA, by default, if any value is NA"
msg2 <- "When R shows an error, it will give an error message"
msg3 <- "If that were true, you should see the mean of the not-NA values in the console"
ex() %>% check_mc(1, feedback_msgs = c(msg1, msg2, msg3))
```

## More arguments

```yaml
type: NormalExercise
key: 0d8f1f12b2
xp: 100
```

We found that, by default, R refuses to calculate a mean, when there are `NA`
values.

We might prefer R to drop the `NA` values, and calculate the mean on the rest.
Of course we have to be very careful interpreting the result - it will not be representative of all countries.

Almost all functions in R allow us to give extra _options_.  We do this using
something called *keyword arguments*.  These have the form `option_name=value`.

In our case, we want to use the `na.rm` option.

`@instructions`
The code to use the `na.rm` option is in the script window.  Run the code to see the result, and then Submit to continue.

`@hint`
If you have deleted the code, copy paste `mean(health_exp_col)` into the script
window.

`@pre_exercise_code`
```{r}
gender_data <- read.csv('http://bit.ly/gender-stats-data')
health_exp_col <- gender_data$health_exp_per_cap
```

`@sample_code`
```{r}
# Calculate the mean, removing the NA values
mean(health_exp_col, na.rm=TRUE)
```

`@solution`
```{r}
mean(health_exp_col, na.rm=TRUE)
```

`@sct`
```{r}
ex() %>% check_output('1260\\.379',
             missing_msg='Expecting to see the mean value, dropping NA')
```

---

## A happy median

```yaml
type: NormalExercise
key: 1b2d5f945f
xp: 100
```

Now you know the two different ways that calculations can deal with `NA`
values:

- refuse to do the calculation and return `NA` (usually the default).
- drop the NA values and do the calculation on the rest.

As you might expect, R has a `median` function, that works in a similar way to
the `mean` function.  Like the `mean` function, it has an `na.rm` option.

`@instructions`

First calculate the median of `health_exp_col` the default way, and show the result.  It should show `NA`.

Then calculate the median of `health_exp_col`, setting the option to drop the
`NA` values.

`@hint`
You should have two lines of code, starting `median(health_exp_col`, one that does not drop the `NA` values, and one that does.

`@pre_exercise_code`
```{r}
gender_data <- read.csv('http://bit.ly/gender-stats-data')
health_exp_col <- gender_data$health_exp_per_cap
```

`@sample_code`
```{r}
# First display the value R returns for the median, by default.
# Your code will start "median(health_exp_col".

# Next display the value R returns for the median, when dropping NA values.
# Your code will start "median(health_exp_col".
```

`@solution`
```{r}
median(health_exp_col)
median(health_exp_col, na.rm=TRUE)
```

`@sct`
```{r}
state = ex()
check_output(state, 'NA',
             missing_msg='Expecting to NA for the default calculation of median')
check_output(state, '697\\.8017',
             missing_msg='Expecting to 697.8017 for median without NA')
```

---

## Calculating with columns

```yaml
type: NormalExercise
key: 08b638fb44
xp: 100
```

Calculating the per-capita GDP.  First elementwise, with indexing.

`@instructions`


`@hint`


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

```

---

## All-at-once calculations with columns

```yaml
type: NormalExercise
key: a811986c3c
xp: 100
```

Calculating the per-capita GDP with vectors.

`@instructions`


`@hint`


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

```
