run_analysis <- function(workdir) {
  
  setwd(workdir)

  # read activity labels  
  activity_label <- read.table(paste0(getwd(),".//UCI HAR Dataset//activity_labels.txt"), col.names = c("activity_label","activity"))

  
  #read features.txt and sub descriptive names with small letter and slpit name with _
  data_features <- read.table(paste0(getwd(),".//UCI HAR Dataset//features.txt"), col.names = c("feature_num","description"))
  
  data_features[,2]<-gsub("\\()","",data_features[,2])
  data_features[,2]<-gsub("\\)$","",data_features[,2])
  data_features[,2]<-gsub("\\),","\\_",data_features[,2])
  data_features[,2]<-gsub("\\-|\\(|\\)|\\,","\\_",data_features[,2])
  data_features[,2]<-gsub("fBodyBody","freq_body",data_features[,2])
  data_features[,2]<-gsub("tBody","time_body",data_features[,2])
  data_features[,2]<-gsub("fBody","freq_body",data_features[,2])
  data_features[,2]<-gsub("Acc","_acceleration",data_features[,2])
  data_features[,2]<-gsub("tGravity","time_gravity",data_features[,2])
  data_features[,2]<-gsub("Jerk","_jerk",data_features[,2])
  data_features[,2]<-gsub("Gyro","_gyroscope",data_features[,2])
  data_features[,2]<-gsub("Mag","_magnitude",data_features[,2])

  # Determine the columns that have "mean", "std" or "Mean"
  select_mean_std_col_num <- grep("[Mm]ean|std",data_features$description)
  select_mean_std_col_name <- grep("[Mm]ean|std",data_features$description, value = TRUE)
  
  #read text data and select columns that have "mean", "std" or "Mean"
  data_subject_test <- read.table(paste0(getwd(),".//UCI HAR Dataset//test//subject_test.txt"), col.names = "subject")
  data_y_test <- read.table(paste0(getwd(),".//UCI HAR Dataset//test//y_test.txt"), col.names = "activity")
  data_x_test <- read.table(paste0(getwd(),".//UCI HAR Dataset//test//X_test.txt"))
  data_x_test <- data_x_test[,select_mean_std_col_num]
  names(data_x_test) <- select_mean_std_col_name
  
  #read train data and select columns that have "mean", "std" or "Mean"
  data_subject_train <- read.table(paste0(getwd(),".//UCI HAR Dataset//train//subject_train.txt"), col.names = "subject")
  data_y_train <- read.table(paste0(getwd(),".//UCI HAR Dataset//train//y_train.txt"), col.names = "activity")
  data_x_train <- read.table(paste0(getwd(),".//UCI HAR Dataset//train//X_train.txt"))
  data_x_train <- data_x_train[,select_mean_std_col_num]
  names(data_x_train) <- select_mean_std_col_name

  # merge data from text and train
  data_test <- data.frame(data_subject_test, data_y_test, data_x_test)
  data_train <- data.frame(data_subject_train, data_y_train, data_x_train)
  data_merged <- merge(data_test, data_train, all=TRUE)
  
  #find the column mean for each variable by each subject and each activity
  for (i in 1:30) {
      for (j in 1:6) {
        data_subset <- data_merged[data_merged[,1]==as.character(i) & data_merged[,2]==as.character(j),]
        if (!exists("data_tidy")) {
            data_tidy <- t(as.data.frame(colMeans(data_subset)))
        } else {
            data_tidy <- rbind(data_tidy, t(as.data.frame(colMeans(data_subset))))
        }
      }
  }
  
  #re-name column names in data_tidy with "avg_" prefix
  colnames(data_tidy)<-c("subject","activity",paste0("avg_",colnames(data_tidy[,3:ncol(data_tidy)])))
  
  #replace activity label number with activity label description
  for (i in 1:6) {
      data_tidy[,2] <- sub(as.character(i), activity_label[i,2], data_tidy[,2])
  }
  
  #write to output file
  write.table(data_tidy, "run_analysis_output.txt",sep="\t", row.name=FALSE, quote=FALSE)
}