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

---

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

Oftentimes, we want to run calculations on column values.

For example, our data frame has these columns:

- `gdp` : Gross Domestic Product.
- `population` : total population.

We might want to calculate the Gross Domestic Product per person.

To get the first value of `gdp`, we can use `gender_data$gdp[1]`.  Notice the
square brackets at the end, and inside the brackets, the index of the value we
want.  Try it in the R console.

`gender_data$population[1]` will give us the first value for `population`.

`@instructions`
Divide the first value of the `gdp` column by the first value of the `population` column, to give the GDP per person, for the first row.

`@hint`
Are you using `gender_data$gdp[1]` divided by `gender_data$population[1]`?

`@pre_exercise_code`
```{r}
gender_data <- read.csv('http://bit.ly/gender-stats-data')
```

`@sample_code`
```{r}
# Show the first value of gdp divided by the first value in population

```

`@solution`
```{r}
gender_data$gdp[1] / gender_data$population[1]
```

`@sct`
```{r}
ex() %>% check_output('610\\.1331',
             missing_msg='Expecting to see value 610.1331')
```

---

## All-at-once calculations with columns

```yaml
type: NormalExercise
key: a811986c3c
xp: 100
```

You have just divided the first value of the `gdp` column by the first value in the `population` column.   How would we do that for all the values in the column?  It would be very boring to do:

```
value1 <- gender_data$gdp[1] / gender_data$population[1]
value2 <- gender_data$gdp[2] / gender_data$population[2]
# and so on
```

R has thought of that.  If you divide one (whole) column by another (whole)
column, then R divides each value in one column by the corresponding value in
the other, all in one go.

`@instructions`
Run the code in the script window, to show the result of dividing the `gdp` column by the `population` column.  Scroll up to check that the first value is the same as the value you saw in the previous exercise.  Click "Submit" when you have finished.

`@hint`
If you have deleted the code, copy paste `gender_data$gdp
/ gender_data$population` into the script window.

`@pre_exercise_code`
```{r}
gender_data <- read.csv('http://bit.ly/gender-stats-data')
```

`@sample_code`
```{r}
# Divide the gdp column by the population column, for all rows
gender_data$gdp / gender_data$population
```

`@solution`
```{r}
gender_data$gdp / gender_data$population
```

`@sct`
```{r}
ex() %>% check_output('610\\.1331[[:space:]]+4268\\.1406[[:space:]]+4878\\.2404',
             missing_msg='Expecting values to start with 610.1331  4268.1406 4878.2404')
```

---

## Full cash value

```yaml
type: NormalExercise
key: 8f7d4d205f
xp: 100
```

Have a look at [the column descriptions](http://bit.ly/gender-stats-variables) for this data file.

The column `health_exp_per_cap` is the health expenditure per person in the country.

Now we want to calculate the total dollar expenditure on health.

`@instructions`
Calculate and show the total dollar health expenditure for every country, by
multiplying the values in the `health_exp_per_cap` column by the corresponding
values in the `population` column.

If you did it right, you will see lots of big numbers in scientific notation,
like `5.271766e+09` ($5.271766 * 10^9$).

`@hint`
Multiply `gender_data$health_exp_per_cap` by `gender_data$population`.

`@pre_exercise_code`
```{r}
gender_data <- read.csv('http://bit.ly/gender-stats-data')
```

`@sample_code`
```{r}
# Multiply the 'health_exp_per_cap` values by the 'population' values.

```

`@solution`
```{r}
gender_data$health_exp_per_cap * gender_data$population
```

`@sct`
```{r}
ex() %>% check_output(
  '5\\.271766e\\+09[[:space:]]+1\\.658458e\\+09[[:space:]]+3\\.404615e\\+10',
  missing_msg='Expecting values to start with 5.271766e+09 1.658458e+09 3.404615e+10')
```
