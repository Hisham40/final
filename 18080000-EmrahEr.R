# -------------------------------------------------------------------------- ###
# Question 1a ----
[Gitrepo](https://github.com/Hisham40/final.git)
# Question 2a ----
library(dplyr)

average_fare <- titanic %>%
  group_by(sex) %>%
  summarise(mean_fare = mean(fare, na.rm = TRUE))

average_fare
The code uses the %>% pipe operator to chain the operations together.
The group_by() function groups the data by the "sex" column.
The summarise() function calculates the mean fare for each group using the mean() function. The na.rm = TRUE argument is used to remove any missing values.
The result, which contains the average fare for women and men, is stored in the average_fare tibble.
Printing average_fare will display the calculated average fare for women and men.

# -------------------------------------------------------------------------- ###


# -------------------------------------------------------------------------- ###
# Question 2b ----
library(tidyverse)

ggplot(data = titanic, aes(x = sex, y = age, na.rm = TRUE)) +
  geom_boxplot()
The code first loads the tidyverse package, which includes the ggplot2 library for data visualization.
ggplot() initializes a new ggplot object, specifying the dataset as titanic.
The aes() function sets the aesthetic mappings. Here, the x-axis is mapped to the "sex" column, and the y-axis is mapped to the "age" column.
na.rm = TRUE is used to remove any missing values.
geom_boxplot() adds the boxplot layer to the plot.
Running this code will generate a boxplot of ages with respect to sex, where the x-axis represents the two sexes (female and male), and the y-axis represents the age values.
# -------------------------------------------------------------------------- ###


# -------------------------------------------------------------------------- ###
# Question 2c ----
# -------------------------------------------------------------------------- ###


# -------------------------------------------------------------------------- ###
# Question 3a ----
x <- 10:20
subset <- x[seq(1, 5, by = 3)]

subset
output
[1] 10 13 16
Explanation:

  The vector x is defined as 10:20, which generates a sequence of numbers from 10 to 20.
The seq(1, 5, by = 3) function generates a sequence of numbers starting from 1 and incrementing by 3, until reaching 5.
When you subset x using x[seq(1, 5, by = 3)], it selects the elements of x at the positions 1, 4, and 5.
The resulting subset contains the values 10, 13, and 16.
Therefore, running x[seq(1, 5, by = 3)] would give you the vector [10, 13, 16].

# -------------------------------------------------------------------------- ###


# -------------------------------------------------------------------------- ###
# Question 3b ----
library(dplyr)

dt3 <- inner_join(dt1, dt2)
The inner_join() function performs an inner join operation between dt1 and dt2 based on matching values in common columns.
By default, inner_join() will match on all columns that have the same name in both tibbles. If you want to specify specific columns for matching, you can use the by argument.
The result of the inner join is stored in dt3.
After executing this code, dt3 will contain all rows from dt1 that have matching values in dt2, with all columns from both dt1 and dt2. Multiple matches between dt1 and dt2 will result in all combinations of the matches being returned.
# -------------------------------------------------------------------------- ###

# Question 3c ----
library(ggplot2)
dt %>%
ggplot(aes(x = a, y = b)) +
geom_point() +
geom_smooth() +
scale_x_continuous("a") +
scale_y_continuous("b")

# Question 3d ----
mylist <- list(1:3, c(3:5, NA))
myresult <- map(mylist, ~ mean(.x, na.rm = TRUE)) %>% unlist()
mylist is defined as a list with two elements. The first element is the sequence 1:3, and the second element is a vector created by concatenating the sequence 3:5 with NA.
map(mylist, ~ mean(.x, na.rm = TRUE)) applies the mean() function to each element in mylist, calculating the mean while removing NA values (na.rm = TRUE).
%>% is the pipe operator, which allows you to chain operations together.
unlist() is used to convert the resulting list into a vector.
The resulting myresult object will contain the means of each element in mylist with NA values removed:
  myresult

Output
[1] 2 4

Explanation:

  The first element of myresult is the mean of 1:3, which is 2.
The second element of myresult is the mean of 3:5 (excluding NA), which is 4.
Therefore, running the provided commands would result in the myresult object containing the vector [2, 4].
# -------------------------------------------------------------------------- ###


# -------------------------------------------------------------------------- ###
# Question 3e # Define the sample mean, population mean, and sample standard deviation
X_bar <- 10
mu <- 8
sigma <- 2

# Calculate Z
Z <- 5 * (X_bar - mu) / sigma

# Calculate P(Z ≤ 1)
P_Z_less_than_1 <- pnorm(1, mean = 0, sd = 1)

P_Z_less_than_1

Explanation:

  In the given code, we assume the sample mean X_bar is 10, the population mean mu is 8, and the population standard deviation sigma is 2. Make sure to replace these values with your specific values.
The formula Z = 5(X̄ - µ)/S calculates the Z-score using the sample mean, population mean, and sample standard deviation.
The pnorm() function calculates the cumulative probability for a standard normal distribution. Here, we use pnorm(1, mean = 0, sd = 1) to calculate P(Z ≤ 1) by specifying 1 as the value for which we want to calculate the cumulative probability.
The calculated probability P(Z ≤ 1) is stored in the variable P_Z_less_than_1 and can be printed or used for further calculations.







# -------------------------------------------------------------------------- ###


# -------------------------------------------------------------------------- ###
# Question 3f ----
backgammonRoll <- function() {
  die1 <- sample(1:6, 1, replace = TRUE)  # Roll the first die
  die2 <- sample(1:6, 1, replace = TRUE)  # Roll the second die
  total <- die1 + die2                    # Calculate the total sum

  cat("Die 1:", die1, "\n")
  cat("Die 2:", die2, "\n")
  cat("Total:", total, "\n")

  return(total)  # Return the total sum
}
The backgammonRoll function uses the sample() function to simulate rolling a single die. We specify the possible outcomes as numbers 1 to 6 and set replace = TRUE to allow repeated sampling.
The function rolls the first die by calling sample(1:6, 1, replace = TRUE) and stores the result in the variable die1.
Similarly, the second die is rolled and the result is stored in the variable die2.
The total sum is calculated by adding die1 and die2 and stored in the variable total.
The function then uses cat() to display the results, showing the value of each die and the total sum.
Finally, the function returns the total sum.
To use this function, you can simply call it:
  rollResult <- backgammonRoll()

# -------------------------------------------------------------------------- ###


# -------------------------------------------------------------------------- ###
# Question 3g # Assuming 'titanic' is the dataframe containing the Titanic dataset

# Subset the age values for survivors and non-survivors
age_survivors <- titanic$Age[titanic$Survived == 1]
age_nonsurvivors <- titanic$Age[titanic$Survived == 0]

# Perform the two-sample t-test assuming equal variances
result <- t.test(age_survivors, age_nonsurvivors, var.equal = TRUE)

# Extract the p-value from the test result
p_value <- result$p.value

# Print the p-value
cat("p-value:", p_value, "\n")

# -------------------------------------------------------------------------- ###


# -------------------------------------------------------------------------- ###
# Question 4a ----dat2 <- dat %>%

group_by(country) %>%
  mutate(gdp_pc = gdp / population)
# A tibble: 6 x 5
# Groups:   country [2]
country  year   gdp population gdp_pc
<fct>   <int> <dbl>      <dbl>  <dbl>
  1 England  2018  8000         80  100
2 Germany  2018 10000        100  100
3 England  2019  8100         90   90
4 Germany  2019 11000        110  100
5 England  2020  8500        100   85
6 Germany  2020 10200        120   85

# -------------------------------------------------------------------------- ###


# -------------------------------------------------------------------------- ###
# Question 5a ----library(tidyr)

dat2 <- dat %>%
  pivot_longer(cols = -country,
               names_to = "year",
               values_to = "gdp") %>%
  mutate(year = as.numeric(year))
# A tibble: 6 x 3
country year    gdp
<fct>   <dbl> <dbl>
  1 Turkey   2018  8000
2 Turkey   2019  8100
3 Turkey   2020  8500
4 Greece   2018 10000
5 Greece   2019 11000
6 Greece   2020 10200


# -------------------------------------------------------------------------- ###
