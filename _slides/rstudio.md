---
---

## RStudio Projects

This software is an example of an *integrated development environment* and focuses on

1. Creating projects that use the R programming language, and 
1. Running R language commands or  programs in the R interpreter.

R is both a **language** and an **interpreter**.

## The Console

The interpreter accepts R commands interactively through the console. Basic math are valid commands in the R language:

~~~
1 + 2
~~~
{:.input}

~~~
[1] 3
~~~
{:.output}

~~~
4^2/sqrt(4)
~~~
{:.input}

~~~
[1] 8
~~~
{:.output}

<!--split-->

Question
: Why is the output prefixed by `[1]`?

Answer
: {:.fragment} That's the index, or position in a vector, of the first result.

<!--split-->

A command giving a vector of results shows this clearly

~~~
seq(1, 100)
~~~
{:.input}

~~~
[1]   1   2   3   4   5   6   7   8   9  10  11  12  13  14  15  16  17  18  19  20  21  22  23  24  25  26  27
[28]  28  29  30  31  32  33  34  35  36  37  38  39  40  41  42  43  44  45  46  47  48  49  50  51  52  53  54
[55]  55  56  57  58  59  60  61  62  63  64  65  66  67  68  69  70  71  72  73  74  75  76  77  78  79  80  81
[82]  82  83  84  85  86  87  88  89  90  91  92  93  94  95  96  97  98  99 100
~~~
{:.output}

## The Editor

The console is for evaluating commands you don't intend to keep or reuse. It's useful for testing commands and poking around. The editor is where you compose scripts that will process data, perform analyses, code up visualizations, and even compose reports.

So we're not starting from scratch in the editor, let's use RStudio to clone the handouts repository.

<!--split-->

Open up 'lesson-1.R' in the editor, and follow along by replacing the `...` placeholders with the code here.

~~~
vals <- c(5, 6, 12)
~~~
{:.text-document title='lesson-1.R'}

<!--split-->

The elements of this statement, from right to left are

1. `)` is the closing paren of a function call
1. `5, 6, 12` are three arguments or parameters to the function
1. `(` is the opening paren of a function call
1. `c` is the name of the function
1. ` <- ` is an operator that assigns what's named on the left to equal the result of the expression on the right
1. `vals` is the name of a variable

Question
: Why call `vals` a "variable" and `c` a "function"?

Answer
: {:.fragment} The distinguishing feature is that a function is callable, which is indicated in documentation by writing the function name with empty parens, as in `c()`.

<!--split-->

The variable `vals` held a vector, which if we made into the column of a table we'd have our first proper dataset ... of sorts. The most common way of holding data in R is within a `data.frame`, created by a function of the same name.

~~~
data <- data.frame(counts = vals)
~~~
{:.text-document title='lesson-1.R'}

<!--split-->

Print the data simply by entering it's name on the console:

~~~
data
~~~
{:.input}

~~~
  counts
1      5
2      6
3     12
~~~
{:.output}

<!--split-->

Or examine its structure with the `str()` function:

~~~
str(data)
~~~
{:.input}

~~~
'data.frame':3 obs. of  1 variable:
 $ counts: num  5 6 12	 
~~~
{:.output}

<!--split-->

## Anatomy of a function

The best way to understand the terminology and workings of R is to compose your own function. Like all programming languages, R has keywords that are reserved for import activities, like creating functions. Keywords are usually very intuitive, the one we need is `function`.

~~~
function(...) {
    ...
	return(...)
}
~~~
{:.text-document title='lesson-1.R'}

<!--split-->

We'll make a function to extract the first row and column of its argument, for which we can choose an arbitrary name:

~~~
function(df) {
    result <- df[[1]]
    return result
}
~~~
{:.text-document title='lesson-1.R'}

Note that `df` doesn't exist until we call the function, which gives the recipe for how `df` will be handled.

<!--split-->

Finally, we need to give the function a name so we can use it like we used `c()` and `seq()` above.

~~~
first <- function(df) {
    result <- df[[1, 1]]
    return result
}
~~~
{:.text-document title='lesson-1.R'}

~~~
first(data)
~~~
{:input}

~~~
[1] 5
~~~
{:.output}

Question
: Can you explain the result of entering `first(vals)` into the console?

Answer
: {:.fragment} The function caused an error, which prompted the interpreter to print a helpful error message. Never ignore an error message.

<!--split-->

## Save your work

Yes, save 'lesson-1.R' to file. But I mean *really* save it, by commiting it to your project and syncing up to a GitHub repository.

1. Go to the `git` tab in RStudio
1. Select `commit` to open the "Review Changes" window
1. Select the file(s) you want to commit.
1. Enter a descriptive message about the commit.
1. Commit!

<!--split-->

## Create a GitHub repository

Create a new repository on your GitHub page, name it whatever you like, but leave it empty (no README!).

![]({{ site.baseurl }}/images/new_repo.png){:width="60%"}  
{:.fragment .captioned}

Once it's created, find the "Clone or download" URL.

<!--split-->

## Change the url for the origin repo

The `system` function in `lesson-1.R` sends the string directly to the operating system, which uses the `git` program itself to do something we can't do through RStudio. 

Open the "Review Changes" window again and notice that your branch is ahead of origin/master! Push those commit(s) to your GitHub repo.

<!--split-->

## Install missing packages

The last thing we'll do before taking a break, is let R install any packages you'll need today. But we'll learn something new along the way.

~~~
requirements <- c('tidyr', 'ggplot2', 'RSQLite', 'rmarkdown')
missing <- setdiff(requirements, rownames(installed.packages()))
~~~
{:.text-document title='lesson-1.R'}

<!--split-->

~~~
length(missing)
~~~
{:.input}

The keyword `if` is part of the R language's syntax for flow control. The statement in the body (between `{` and `}`) only evaluates if the argument (between `(` and `)`) evaluates to TRUE or is non-zero.


~~~
if (length(missing)) {
  install.packages(missing)
}
~~~
{:.text-document title='lesson-1.R'}
