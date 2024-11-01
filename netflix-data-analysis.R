
# Set the working directory
setwd("~/Downloads/Nexford_University/Programming_in_R_and_Python/module_3_assignment/netflix-data-visualization")

# Load libraries
library(ggplot2)
library(dplyr)
library(tidyr)

# Load the Netflix data
netflix_data <- read.csv("data/netflix_data.csv", stringsAsFactors = FALSE)

# Plotting the Top 10 Most Watched Genres
ggplot(genre_counts, aes(x = reorder(listed_in, count), y = count)) +
  geom_bar(stat = "identity", fill = "skyblue") +
  coord_flip() +  # Flip coordinates for horizontal bars
  labs(title = "Top 10 Most Watched Genres on Netflix",
       x = "Genre",
       y = "Number of Shows/Movies") +
  theme_minimal()
