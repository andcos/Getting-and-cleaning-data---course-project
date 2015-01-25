==================================================================
r_analysis.r

==================================================================
Variables used in the code

Variable names:

from reading data
for train components
x_train - data contained in the X_train.txt file 
y_train - data contained in the y_train.txt file 
x_train_subject - data contained in the subject_train.txt file

from test data
x_test - data contained in the X_test.txt file
y_test - data conianed in the y_test.txt file
y_test_subject - data contained in the subject_test.txt file

features - labels for all the measured parameters - tBodyAcc-mean()-X
activity_labels - consists of 6 activities. Example: WALKING 

y_train_activity - combined data between y_train and activity_labels by V1 Column key
train - contains all measurments for train data set

y_test_activity - combined data between y_test and activity_labels by V1 Column key
test- contains all measurments for test data set

dt - contains all data put together from train and test

mean_std_c - contains the vector with the possitions of the words mean and std in the features vector,
		and with three extra added columns to simulate the whole dt
features- overwritten vector with just the contents of mean and std words


colnames - contains all the columns names that are in features vector plus 3 extra found in subject and activity txt

tidy - contains the mean and std values of a set of 80 directional variables


==================================================================
Final file includes