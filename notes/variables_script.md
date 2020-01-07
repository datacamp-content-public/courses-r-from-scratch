# Script for variables video

Now you have run your first analysis in R.

Remember the first line in the code for the last exercise:

```
gender_data <- read.csv('http://bit.ly/wb-gender-stats')
```

The line reads the data from <http://bit.ly/wb-gender-stats> into memory, and
gives the data a label, `gender_data`.

More formally, this line is an *assignment statement*.  It's called an
assignment statement, because it *assigns* a value to a variable.

Assignment statements are one of the basic building blocks to using any
programming language, including R.

An assignment statement gives a name to a value.

The statement has two parts, one to the left of the `<-`, and one to the right.

The part to the left is called the Left Hand Side (LHS).  This is the label, or
name we are going to use for our data.  In our case this is `gender_data`. When
this statement has run, we have a new *variable*.  The *variable name* will be
`gender_data`.

The part to right is called the Right Hand Side (RHS).  This is something that
creates our value. In our case this is
`read.csv('http://bit.ly/gender-stats-data')`

After this statement, the variable named `gender_data` points to the value we
got from the RHS.

Variables are very important in R, and other programming languages.  Variables
are names that make it easier for us to refer to data, and to store data from
previous steps.
