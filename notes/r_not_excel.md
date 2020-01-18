# Script for R is not Excel video

This course is an introduction to data analysis using R.

R is a programming language designed for data analysis.  It is widely used in
and industry and academia, and the number of people using R is also rapidly
increasing, so you are very likely to see R in your future careers.

R takes a completely different approach to other packages like Excel.  In Excel
you define most of the analysis by clicking around in a graphical interface.

In R you write the analysis in words, and the words are in a concise language, called the R language.

This takes a bit of getting used to, but I think you will soon start to see how
efficient and powerful it can be when you work this way.

The easiest way to get an idea is to run a simple analysis.

So here you can see that I have already started the R Studio program.  R Studio
is a helpful interface to make R a little bit easier to use.

Next I am going to type in the commands to load a dataset from a web address.

So I first type a name that I am going to give this data once it has reached
the memory of the computer.  Then I type this combination of symbols, a less
than and a minus sign, and that is like an like an arrow pointing to the left,
and it is just saying that I want the stuff which I am gong to type now to be
put into the "gender_data" variable, given the name "gender_data". So let's
type the command to get the data.

So I just give the "read.csv" command a web address, and I press return.

What has happened is that this part of the line goes to fetch the data from
the web and reads it into memory, and in fact it reads it into memory in the
form of something called a "data frame", which you will see quite soon.  A data
frame is just a table in memory that we can use to look at the rows and columns
in the data.  It is rather like an Excel spreadsheet, except in R.

So I have read in the data and I have given it this name "gender_data".  So the
next thing I might like to do is that I might like to do is I might to have
look what is in this data frame, this table of data.

To do this I can use the command head and that just shows me the first six rows
of the data.

So I can see down the left here, the numbers of the rows 1 2 3 4 5 6.  There
are many more rows, but it is just showing me the first six.

Across the top I see the column names.  So the data is arranged in columns, you
can see the first column is the name of the country, and there are a couple of
other columns that are of interest to us.

The one I am going to look at now is this one, 'heath_exp_per_cap'.  I happen
to know this is the health expenditure per person, in the country, in dollars.

Another interesting variable is "mat_mort_ratio" and what this is, is the
maternal mortality ratio, and that is the number of women who die for every
100,000 live births - the number of women who die in childbirth.

We might speculate that a more a country spends here, on healthcare, the less
likely a women is to die in childbirth, so one way of looking at that is to do
a plot.

So here is how you might do a plot in R.   You type plot.  The first
thing you type is what's going to go on the x axis. What's going to go on the
x axis is the health expenditure per capita data, so the numbers in this
healt_exp_per_cap column.

How do I do that?

First I say the name of this data table and then I put a dollar and then I give the name of the column that I want.

I have now specified that I on the x axis I am going to put the data for the health expenditure per capita.

I do a very similar thing for the y column, so in this case I want the maternal
mortality ratio, and then I press return.

On the right here in the R Studio interface you see the plot.
It has quite an interesting pattern.

It looks as if, when we get up to an expenditure of maybe \$1500 per person, as
we do that, the maternal mortality ratio reduces rapidly. But it has more or
less got to a floor at that stage, and even with massively increased spending,
you are having very little effect on the maternal mortality ratio, presumably
partly because very few women are dying after that level of expenditure.

OK, so we have started to analyze our dataset and this gives you a taste for
the way things work in R.

So the next thing we're going to do is we going to go to the datacamp
interface, and then you're going to run through this analysis yourself, and
then we are going to go through things more slowly, to work out how R did what
it did, and how this language works.
