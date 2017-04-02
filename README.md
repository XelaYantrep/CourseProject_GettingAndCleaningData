# Readme file for Getting and Cleaning Data course project

Files included in this analysis:

* `tidy_averages.txt` The output file described below.
* `codebook.md` A file which describes the variable names in tidy_averages.
* `run_analysis.R` - The file which takes the UCI data and exports tidy_averages.txt.

## Background and Data Source

This project expands on the "Human Activity Recognition Using Smartphones Data Set" which is provided by the University of California Irvine through their machine learning repository.  The original data may be found at [this link](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).  Most of the variable names remain consistent between tidy_averages and this dataset, with exceptions and details noted in the codebook.md.

## tidy_averages.txt, the output file

The purpose of this data file is to summarize, for each (subject, activity) pair, the estimations in the original dataset which involve either a mean or standard deviation.  The method of summary chosen was to take the mean of all factors, for each (subject, activity) pair that existed.

For instance, subject 1 while walking will be a row in the dataset.  Each column is a factor e.g., tBodyAcc-mean()-X, and the entry in the subject 1 WALKING row will be the average of this measurement over all time points.

Since there are 6 activities and 30 subjects, tidy_averages has 180 rows for each (subject, activity) pair.  There are 68 observed variables, so if loaded in correctly it will be a 180x68 dataframe.

## run_analysis.R

This file transforms the original UCI data into tidy_averages.  It handles the downloading, unzipping and directory creation in a way that should be compatible with all platforms, but please see the link to UCI above if you encounter issues.  We recommend that the user choose their working directory, but a folder named "GCD" will be created in whatever directory you`re in.

run_analysis loads all the measurements, subjects, features, and observed activities and combines them into one dataframe.  We chose to have the first column be the subject, the second the activity, and the next 66 are the relevant measurements.  The training data compose the first 7352 rows and the test data are the rest.

In order to summarize this data we used dplyr to group the data by subject and activity, then tabulated the mean for each measurement given a (subject, activity) pair.  A data frame with this information is what we exported to tidy_averages.txt.

##  Design Decisions and Details

Rather than select all the measurements where the words Mean, mean, Std, std appear, we chose to select only the measurements corresponding to `mean()` and `std()`.  This is the most sensible interpretation of the assignment given the original UCI code book, but the code for the other interpretation is included in a comment in run_analysis.R if the user should desire different behavior.

We chose to make the `subject` and `activity` variables factor-type based on the recommendation Jeff Leek made in the lectures, that this should be the case unless you have good reason to do otherwise.

Finally we`ll note that the last step (Step 5) could certainly be interpretted other ways.  However, our table includes the most complete information we could think of, allowing further summarization if the user wanted summaries by only subject or only activity with one line of code.

We chose not to rename the variables in the data set because there is simply no way to explain them more clearly without making them onerously long.  In some cases just using full words, e.g. acceleration instead of Acc, would have made the variables in excess of 80 characters.  While this may not seem clear, the code book seems to be the best solution to this problem.

## Dependencies and R version

All files included were created using R version 3.2.3 (2015-12-10), named "Wooden Christmas-Tree", on a Linux x86, 64-bit operating system.

The only package required is `dplyr`.
