# Scratch file for working with the files in data. I load (also known as
# "attach") the three libraries that are most useful, I think, for this sort of
# work. One of my roles is to point out which packages are useful. Including the
# package name (or "tidyverse" or "dplyr") when googling will often lead to
# better results than a straight google.

library(tidyverse)
library(stringr)
library(fs)
library(readr)

# 1. Read data/ex_926_I.csv into a tibble and provide a summary.

data <- read_csv("data/ex_926_I.csv")

# 2. Create a vector with all the file names in data/.

filenames <- dir_ls(path = "data/")

# 3. Create a vector with just the file names that have an "A" in them.

str_subset(filenames, "A")

# 4. Read in all the files into one big tibble. Check out ?map_dfr . . .
# Background reading here:
# https://r4ds.had.co.nz/iteration.html#the-map-functions

table <- map_dfr(filenames, read_csv)

# 5. Read in everything and also add a new variable, source, which records the
# file name from which the data came.

newvar <- map_dfr(file_names, read_csv, .id = "source")

# 6. Find the 4 files with the largest number of observations.

# 7. Write a function which takes a character string like "A" and then reads in
# all the files which have "A" in the name.

# 8. Create a Shiny App which displays the histogram of b, allowing the user to
# subset the display for specific values of c.

