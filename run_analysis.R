# Download and unzip the archive
fileURL <- "https://d396qusza40orc.cloudfront.net/getdata/projectfiles/UCI%20HAR%20Dataset.zip"
download.file(fileURL, destfile="./HAR.zip", method="curl")
setwd("./UCI HAR Dataset")

# Get the feature names to use as column labels and remove the parens; get the activity labels
features <- read.table("features.txt", header=FALSE, col.names=c("FeatureNum","Feature"))
featurenames <- features[,2]
featurenames <- gsub("(","",featurenames,fixed=TRUE)
featurenames <- gsub(")","",featurenames,fixed=TRUE)

actlbl <- read.table("activity_labels.txt", header=FALSE, col.names=c("ActNum","Activity"))

# Read the test data, get only the mean and std columns, and cbind together

setwd("./test")

subtest <- read.table("subject_test.txt", header=FALSE, col.names=c("Subject"))
actlbltest <- read.table("y_test.txt", header=FALSE, col.names=c("Activity.Num"))
testdata <- read.table("./X_test.txt",header=FALSE, col.names=featurenames)

testdatamean <- select(testdata, matches("\\bmean\\b", ignore.case=FALSE))
testdatastd <- select(testdata, matches("\\bstd\\b", ignore.case=FALSE))

testdataclean <- cbind(subtest,actlbltest,testdatamean,testdatastd)

# Read the training data, get only the mean and std columns, and cbind together

setwd("../train")
subtrain <- read.table("subject_train.txt", header=FALSE, col.names=c("Subject"))
actlbltrain <- read.table("y_train.txt", header=FALSE, col.names=c("Activity.Num"))
traindata <- read.table("./X_train.txt",header=FALSE, col.names=featurenames)

traindatamean <- select(traindata, matches("\\bmean\\b", ignore.case=FALSE))
traindatastd <- select(traindata, matches("\\bstd\\b", ignore.case=FALSE))

traindataclean <- cbind(subtrain,actlbltrain,traindatamean,traindatastd)

# Combine the two datasets, and add an Activity factor label based on Activity.Num 

cleandata <- rbind(testdataclean, traindataclean)
cleandata$Activity <- factor(cleandata$Activity.Num, labels = actlbl[,2])

# Group by Activity and Subject; create a summary dataset with means across each column;
# Write the summary dataset to a table

library(dplyr)

cleandata <- group_by(cleandata, Activity, Subject)

summclean <- summarise_each(cleandata, funs(mean))

setwd("../")

write.table(summclean, file="./HARsumm.txt", row.name=FALSE)