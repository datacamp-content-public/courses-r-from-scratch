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
data = read.csv('http://bit.ly/gender-stats-data')
# Show the first 6 rows
head(data)
# Plot Health Expenditure Per Capita (x axis) against the Maternal Mortality ratio (y axis)
plot(data$heath_exp_per_cap, data$mat_mort_ratio)
```

`@solution`
```{r}
# Read the data into memory
data = read.csv('http://bit.ly/gender-stats-data')
```

`@sct`
```{r}
success_msg("Nicely done.")
ex() %>% check_object("data") %>% check_equal()
```
