---
title: 'Data frames and functions'
description: 'Data frames contain columns of data.  We use functions to examine data frames.'
---

## Functions and the data frame

```yaml
type: NormalExercise
key: a43b4a146d
xp: 100
```

In the last chapter you found that the `gender_data` variable points to
a `data.frame`.

This is a new type of thing, that we have not seen before.  It is not
a number or a character or a logical, it is a special type that contains
a *table* of data.

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

If you can't remember the output of `dim`, try executing `dim(gender_data)` in
the R Console (that's the bottom right pane in the DataCamp interface).
`gender_data` is already loaded.

Looking at the output, which of the following is true?

`@possible_answers`
- `gender_data` has 263 columns and 8 rows;
- `gender_data` has 263 rows and 8 columns;
- the output from `dim` does not tell us the number of rows, columns.

`@hint`
The first output from `dim` is the number of rows.

`@pre_exercise_code`
```{r}
gender_data <- read.csv('http://bit.ly/gender-stats-data')
```

`@sct`
```{r}
msg1 <- "Look carefully at the order of columns and rows"
msg2 <- "Yes, dim shows number of rows and number of columns"
msg3 <- "dim does show us the number of rows and columns."
ex() %>% check_mc(2, feedback_msgs = c(msg1, msg2, msg3))
```

---

## Column names

```yaml
type: NormalExercise
key: 34dea736b6
xp: 100
```

`names` is another useful function that operates on data frames.

It shows us the names of the columns.

For example, say we have a data frame variable `df`.  We can show the names of the columns with:

```
names(df)
```

`@instructions`
Use the `names` function with the `gender_data` data frame as an argument, to show the names of the data frame columns.

The `gender_data` data frame is already loaded.

`@hint`
You will need something starting with `names(` and ending with `)`.  What goes inside the brackets?

`@pre_exercise_code`
```{r}
gender_data <- read.csv('http://bit.ly/gender-stats-data')
```

`@sample_code`
```{r}
# Display the names from the gender_data data frame
```

`@solution`
```{r}
names(gender_data)
```

`@sct`
```{r}
state <- ex()
for (name in names(gender_data)) {
  check_output(state, name, missing_msg=paste('Expecting "', name, '" in ouput', sep=''))
}
```

---

## Structure of the data frame

```yaml
type: NormalExercise
key: 5e235c1b49
xp: 100
```

Another way of getting a quick view of the data frame is to use the `str` function.

We have now seen several functions, and we will see several more.  It will soon
be difficult to remember exactly what each of these functions do.

To get help for a function, go to the R Console window, and type `?` followed
by the function name.  For example, try typing `?str` and pressing Enter.  You
should see the help for the `str` function appear.

As you will see from the help, `str` shows the "structure" of an R "object" - such as a data frame.

`@instructions`
Use the `str` function with the `gender_data` data frame as an argument, to
show the structure of the `gender_data` data frame.

The `gender_data` data frame is already loaded.

`@hint`
You will need something starting with `str(` and ending with `)`.  What goes inside the brackets?

`@pre_exercise_code`
```{r}
gender_data <- read.csv('http://bit.ly/gender-stats-data')
```

`@sample_code`
```{r}
# Display the structure of the gender_data data frame
```

`@solution`
```{r}
str(gender_data)
```

`@sct`
```{r}
state <- ex()
for (name in names(gender_data)) {
  check_output(state, name, missing_msg=paste('Expecting "', name, '" in ouput', sep=''))
}
check_output(state, '263 obs. of  8 variables',
             missing_msg='Expecting to see no of observations and variables')
```

---

## What's the structure?

```yaml
type: MultipleChoiceExercise
key: 6f33b5498c
xp: 50
```

If you can't remember the output of `str`, try executing `str(gender_data)` in
the R Console. `gender_data` is already loaded.

`@possible_answers`
- `gender_data` has one column of type "num" (numerical) and seven columns of
  type "character".
- `gender_data` has four columns of type "num" (numerical) and four columns of
  type "character".
- `gender_data` has one column of type "Character" and seven of type "num"
  (numerical).
- `gender_data` has one column of type "Factor" and seven of type "num"
  (numerical).

`@hint`
`str` output has one line per column.  The line starts with a `$` followed by
the variable name, followed by the data type.

`@pre_exercise_code`
```{r}
gender_data <- read.csv('http://bit.ly/gender-stats-data')
```

`@sct`
```{r}
msg0 <- "Look at the column data types, after the column names in the ouput"
msg1 <- "Yes, right, there is one Factor columns and seven numerical columns and one Factor column"
ex() %>% check_mc(4, feedback_msgs = c(msg0, msg0, msg0, msg1))
```

---

## Summarizing

```yaml
type: NormalExercise
key: 6d072576e3
xp: 100
```



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

## What's in a summary?

```yaml
type: MultipleChoiceExercise
key: 561d6b2cae
xp: 50
```



`@possible_answers`


`@hint`


`@pre_exercise_code`
```{r}

```

`@sct`
```{r}

```

---

## Heads and tails

```yaml
type: NormalExercise
key: 316cdc7619
xp: 100
```



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
