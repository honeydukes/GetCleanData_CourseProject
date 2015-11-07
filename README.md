Markdown File for runanalysis.R

Original Data Set
=================
The data set is Taken from a group of 30 subjects (labelled 1 to 30), who are volunteers between 19-48 years old.

Each subject performed 6 activities as follows :
1 : WALKING
2 : WALKING_UPSTAIRS
3 : WALKING_DOWNSTAIRS
4 : SITTING
5 : STANDING
6 : LAYING

For each subject and each activity, 561 features were captured, with each feature being captured at a constant rate of 50Hz.
The info for the features can be found here - '~//UCI HAR Dataset//features_info.txt'
A listing of all features can be found here - '~//UCI HAR Dataset//features.txt'

The data set has been randomly partitioned into 2 sets as follows:
- 1. Training set (which captures 70% of the subjects)
	- '~//UCI HAR Dataset//train/subject_train.txt': Training subject labels.
	- '~//UCI HAR Dataset//train/y_train.txt': Training activity labels.
	- '~//UCI HAR Dataset//train/X_train.txt': Training data with 561 features.
    
- 2. Test set (which captures the other 30% of the subjects)
	-'~//UCI HAR Dataset//test/subject_test.txt': Test subject labels.
	-'~//UCI HAR Dataset//test/y_test.txt': Test activity labels.
	-'~//UCI HAR Dataset//test/X_test.txt': Test data with 561 features.
 
What run_analysis.R Does
========================
1. Read in the table that maps activity numbers to activity labels. ("data_activity_labels")
2. Read in the list feature names.Use "gsub" to make feature names for easily understandable. ("data_features")
3. (a) Read in "subject" for Training data and Test data ("data_subject_test" and "data_subject_train") 
	 (b) Read in "activity code"" for Training data and Test data ("data_y_test" and "data_y_train")  
   (c) Read in the "feature columns" for Training data and Test data ("data_x_test" and "data_x_train")
       - then subset only those columns with feature names involving "Mean", "mean" and "std"
4. Column-bind subject labels, activity labels, and the selected columns in (3c) above. ("data_test" and "data_train")
5. Merge the 2 sets of Training and Test data. ("data_merged") 
6. Subset the merged data for each subject and each activity ("data_subset")
  - then create a new data frame to store the column mean for each feature by each subject and each activity ("data_tidy") 
7. Replace activity labels in "data_tidy" with activity description.
8. For each subject and each activity, Write the mean of each selected feature into "run_analysis_output.txt" file. 


The output consists the following files:
=============================================
1. "run_analysis.R" - is the R code for running this project.
2. 'README.md' - describes how the "run_analysis.R"" works (from data input, data transformation to data output).
3. 'run_analysis_output.txt' - the output file as a result of running "run_analysis.R"
4. 'CodeBook.md' - provides details of all the variables found in "run_analysis_output.txt"

