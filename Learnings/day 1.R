#Installing packages with  dependencies. Some packages may require some dependencies  
install.packages("ggplot2", dependencies =  TRUE)

#Loading Package to use 
require(ggplot2) # library (ggplot2)

5+7

# Assigning value to the variable 
Venkat_variabile = 4+3
venkat1_variable <- 5+4 
Venkat_variabile
venkat1_variable


y<- c(1,2,3,4,5)
print(y)
y
# c - is used for combine function

#In R index is starts with 1
y[1]
 
#It will open help and give you the explanation of a particular function
?c

arr = c(1,2,34,"mm", "matplot")
arr

typeof(arr)


emp.data <- data.frame (
  emp_id = c(1:5),
  emp_name = c ("Venkat", "Ravi", "Manimaran", "Tiya", "priya"),
  salary = c(6723.3,3515.2,2611.0,7329.0,8343.25), 
  
  # Typecasting string Date to the Date Format
  start_date = as.Date(c("2020-01-01", "2011-09-23", "2018-11-15", "2016-05-11",
                         "2015-03-03")),
  stringsAsFactors = FALSE
  
)


# Giving the structure of the Data Frame
str (emp.data)


# Accessing a particular column from the DataFrame

emp.data $ emp_name
emp.data $ emp_id[5]




# Summary of the Data
summary (emp.data)
# I will give Data Distribution based on  the Quadrants

#creation a new df based existing columns data
mynew_df <-data.frame (emp.data$emp_id, emp.data$salary)
mynew_df

# If I want particular rows data
#[rows, columns]

#Getting first two rows and their column value to those two rows
print (emp.data [1:2,])


#getting particular rowns and particular column values
emp.data

print (emp.data [c(2,3), c(3,4)])

#Adding the particular column in the Data Frame
emp.data$department <- c ("IT", "Finance", "HR", "MARKETING", "IT")
emp.data


emp.data [,5]= ""

#Dropping the column in from Data Frame
emp.data = subset (emp.data, select = -c(department))
print(emp.data)

 
 #Row Binding
# We are combing rows from one data frame with the rows from another data frame 
#which has same vectors. 


new_emp.data <- data.frame (
  emp_id = c(6:10),
  emp_name = c ("Guna", "TCS", "Data", "Scientist", "priya"),
  salary = c(67783.3,9515.2,69611.0,9329.0,9943.25), 
  
  # Typecasting string Date to the Date Format
  start_date = as.Date(c("2020-01-01", "2011-09-23", "2018-11-15", "2016-05-11",
                         "2015-03-03")),
  stringsAsFactors = FALSE
  
)

updated_emp.data = rbind(emp.data, new_emp.data)

updated_emp.data

birds.data = data.frame (
  bird_id= c(1:3),
  bird_name = c("Crow", "Peacock", "Cock")
)

Myname= "Venkat"
MyID= 1111
MyWork = "Data Scientist"

typeof(MyID)

# Cat function combines multiple inputs into the continuous print output
cat ("My Name is ", Myname,"\n","My ID is ",MyID,"\n","My Work is",MyWork)

# Data Recycling
vector1 = c (1:3)
vector2 =c (1:5)

combinedvect = vector1+vector2
# Here Vector2's 4 and 5 get added with vector1's 1 and 2 based on data recycling
combinedvect

