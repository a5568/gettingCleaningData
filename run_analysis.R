library(readr)
library(dplyr)

# import the training data
train_x <- read_table('train/X_train.txt', col_names = FALSE, col_types = cols(.default = "n"))
train_y <- read_table('train/y_train.txt', col_names = FALSE)
train_subject <- read_table('train/subject_train.txt', col_names = FALSE, col_types = cols(.default = "c"))

# import the test data
test_x <- read_table('test/X_test.txt', col_names = FALSE, col_types = cols(.default = "n"))
test_y <- read_table('test/y_test.txt', col_names = FALSE)
test_subject <- read_table('test/subject_test.txt', col_names = FALSE, col_types = cols(.default = "c"))

# import activity labels
activities_table <- read_delim('activity_labels.txt', col_names = FALSE, delim = ' ')

# import and adjusting the column names for a more readable tables
features <- read_delim('features.txt', col_names = FALSE, delim = ' ')$X2  %>%
            gsub(pattern = '^t', replacement = 'time') %>%
            gsub(pattern = '^f', replacement = 'frequency') %>%
            gsub(pattern = 'Acc', replacement = 'Accelerometer') %>%
            gsub(pattern = 'Gyro', replacement = 'Gyroscope')

# join the activity labels in the datasets
test_y <- left_join(test_y, activities_table, by = 'X1')
train_y <- left_join(train_y, activities_table, by = 'X1')

# naming the columns
names(train_x) <- features
names(test_x) <- features
names(test_y) <- c('activityNumber', 'activity')
names(train_y) <- c('activityNumber', 'activity')
names(train_subject) <- c('subjectId')
names(test_subject) <- c('subjectId')

# join all the tables for each dataset
test_dataset <- bind_cols(test_subject, test_y, test_x)
train_dataset <- bind_cols(train_subject, train_y, train_x)

# join both datasets
full_dataset <- bind_rows(test_dataset, train_dataset)

# selecting only the correct columns
dataset <- full_dataset[,c(1, 3, grep('(std\\(\\)|mean\\(\\))', features) + 3)] %>% group_by(subjectId, activity) %>% summarise_all(mean)

# exporting the data
write.table(dataset, 'ex4.txt', row.names = FALSE)
