This is the course project for the Getting and Cleaning Data Coursera
course, which contains: CodeBook: summarizes the resulting data fields
for tidy.txt. README: current file run\_analysis.R: produces tidy data
set with the average of each variable for each activity and each subject
from the provided training and the test sets. This code implements below
steps: 1) Load required libraries 2) Download (if does not exist) the
training and the test sets and unzip it 3) Loads the data for indices
contain std and mean 4) Organize the feature names 5) Organize the
activity names 6) Produce the average of each variable for each activity
and each subject

Note: run\_analysis.R is written in windows system. Some changes might
be needed in download part for other systems.
