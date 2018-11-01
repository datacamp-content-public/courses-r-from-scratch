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
check_output(state, '161\\.13803',
             missing_msg='Expecting to see first value')
check_output(state, '115\\.51988',
             missing_msg='Expecting to see last value')
```

---

## Columns as variables

```yaml
type: NormalExercise
key: 6bdb5ddcb1
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

## What's missing in the mean?

```yaml
type: NormalExercise
key: a6dfce900b
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

## More arguments

```yaml
type: NormalExercise
key: 0d8f1f12b2
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

## Calculating with columns

```yaml
type: NormalExercise
key: 08b638fb44
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

## All-at-once calculations with columns

```yaml
type: NormalExercise
key: a811986c3c
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
