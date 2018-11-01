---
title: 'Looking at data with plots'
description: 'R has very powerful tools for looking at data with plots.  We explore some simple plots.'
---

## Histograms

```yaml
type: NormalExercise
key: 37d36434b1
xp: 100
```

R has a very powerful set of functions for plotting data.

It is easy to make simple plots, but, with a little experience, you can make almost any plot you want.

To start, we will explore the values in the `mat_mort_ratio` column of our data frame.

One simple thing we could do, is a histogram.  R has a `hist` function, to make histograms.  Here is a histogram for the `mat_mort_ratio` column.

`@instructions`
Run the code in the script window, to show the histogram of the `mat_mort_ratio` values.  Click "Submit" when you have finished.

`@hint`
If you have deleted the code, copy paste `hist(gender_data$mat_mort_ratio)`
into the script window.

`@pre_exercise_code`
```{r}
gender_data <- read.csv('http://bit.ly/gender-stats-data')
```

`@sample_code`
```{r}
# Show a histogram of the `mat_mort_ratio` values.
hist(gender_data$mat_mort_ratio)
```

`@solution`
```{r}
hist(gender_data$mat_mort_ratio)
```

`@sct`
```{r}
# From :http://datacamp.github.io/testwhat/articles/glossary.html#check-ggplot
ex() %>% {
  check_function(., "hist") %>% check_arg("gender_data$mat_mort_ratio") %>% check_equal()
  }
```

---

## Histograms, variables

```yaml
type: NormalExercise
key: 32d8888562
xp: 100
```

Using a variable pointing to the column, to do the histogram (variables
revision).

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

## Scatter plots

```yaml
type: NormalExercise
key: 002cef1965
xp: 100
```

Plotting one column against another.

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

## Scatter plots with variables

```yaml
type: NormalExercise
key: f1fad864ed
xp: 100
```

Calculate per-capita GDP, plot against a column in the data frame (revision).

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
