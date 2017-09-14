### 14 Sept 2017
### using gapminder

#install.packages("gapminder")
#install.packages("tidyverse")

# loading packages
library("gapminder")
library("tidyverse")

gapminder # tibbles are a special type of dataframes
head(gapminder) # just to check first lines
str(gapminder) # to inspect a dataframe
summary(gapminder) # summary of everything
glimpse(gapminder) # show variables on the opposite side


# we can also visualize the data
plot(lifeExp ~ year, gapminder)
