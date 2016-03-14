temp <- tempfile()
download.file(url="https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", temp)

activity_labels <- read.table(unz(temp, "UCI HAR Dataset/activity_labels.txt"))
features = read.table(unz(temp, "UCI HAR Dataset/features.txt"))

y_test <- read.table(unz(temp,"UCI HAR Dataset/test/y_test.txt"))
y_train <- read.table(unz(temp,"UCI HAR Dataset/train/y_train.txt"))
subject_test <- read.table(unz(temp,"UCI HAR Dataset/test/subject_test.txt"))
subject_train <- read.table(unz(temp,"UCI HAR Dataset/train/subject_train.txt"))

file_to_df <- function(filename, columns, temp) {
	x_test <- read.table(unz(temp, filename), col.names=columns)
	x_test_df <- as.data.frame(x_test)
	return(x_test_df)
}

x_test <- file_to_df("UCI HAR Dataset/test/X_test.txt", features$V2, temp)
x_train <- file_to_df("UCI HAR Dataset/train/X_train.txt", features$V2, temp)

unlink(temp)

names(subject_test) <- "subject"
names(y_test) <- "y"
names(subject_train) <- "subject"
names(y_train) <- "y"

test_data <- cbind(subject_test, x_test, y_test)
train_data <- cbind(subject_train, x_train, y_train)

# question 1 - merged test and training data
all_data <- rbind(test_data, train_data)

# question 2 - extract mean and std only
field_names <- append(which(names(all_data) == "subject"), which(names(all_data) == "y"))
field_names <- append(field_names, grep("std", names(all_data)))
field_names <- append(field_names, grep("mean", names(all_data)))
only_mean_std <- all_data[,field_names]

# question 3 - use descriptiive activity names
names(activity_labels) = c("y", "activity")
merged_data <- merge(x = only_mean_std, y = activity_labels, byx = y, byy = y)

# question 4 - implied from above steps - all data is labeled

# question 5
final_dataset <- aggregate(. ~ subject: activity, merged_data, mean)

write.table(final_dataset, file = "answer.R", append = FALSE, row.name = FALSE)
