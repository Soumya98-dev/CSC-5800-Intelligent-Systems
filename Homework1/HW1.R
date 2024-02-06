# (a) Load iris.dat file (available in R) – Give the basic description of the
# data matrix; no.of data points, no. of features, no. of classes

view(iris)

# number of data points(rows)
nrow(iris)

# number of features(columns)
ncol(iris)

# number of classes/unique variables
length(unique(iris$Sepal.Length))
length(unique(iris$Sepal.Width))
length(unique(iris$Petal.Length))
length(unique(iris$Petal.Width))

# (b) Give some basic statistics (such as mean, median, standard deviation,
# min, max) for each of these features

summary(iris)

sd(iris$Sepal.Length)
sd(iris$Sepal.Width)
sd(iris$Petal.Length)
sd(iris$Petal.Width)

# (c) Plot the first two features of the data. Classes must be discriminated 
# by using different symbols. Please label the figure.

library(tidyverse)
library(ggthemes)

ggplot(iris, aes(x = Sepal.Length, y = Sepal.Width))+
  geom_point(aes(color = Species, shape = Species))+
  geom_smooth(method = "lm", se= FALSE)+
  labs(
    title = "Relation between Sepal length and Sepal Width",
    subtitle = "Dimensions for setosa, versicolor,virginica",
    x = "Sepal Length(cm)", y = "Sepal Width(cm)",
    color = "Species", shape = "Species"
  )+
  scale_color_colorblind()

cor(iris$Sepal.Length, iris$Sepal.Width)

# Problem 4

# Generate a sequence of similarity values
similarity_values <- seq(0, 1, length.out = 100)

# Calculate dissimilarity values for d1 and d2
d1_values <- (1 - similarity_values) / similarity_values
d2_values <- -log(similarity_values)

# Create a data frame for plotting
plot_data <- data.frame(similarity = similarity_values, d1 = d1_values, d2 = d2_values)

# Plotting
ggplot(plot_data, aes(x = similarity)) +
  geom_line(aes(y = d1), color = "blue", linetype = "solid", size = 1, alpha = 0.8, label = "d1") +
  geom_line(aes(y = d2), color = "red", linetype = "dashed", size = 1, alpha = 0.8, label = "d2") +
  labs(title = "Comparison of Dissimilarity Measures",
       x = "Similarity",
       y = "Dissimilarity",
       color = "Measure") +
  theme_minimal()




  

