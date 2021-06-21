library(gapminder)
library(dplyr)
gm <- gapminder
# Create a histogram of life expectancy in 1980
life1982 <- gm %>%
  filter(year == 1982)

ggplot(data = life1982,
       aes(x = lifeExp)) +
  geom_histogram()

# Create a line plot for population in Asia, colored by country. Make the lines a bit thicker and more transparent.
popAsia <- gm %>%
  filter(continent == 'Asia')

options(scipen = 999)
ggplot(data = popAsia,
       aes(x = year,
           y = pop,
           color = country)) +
  geom_line(alpha = 0.5,
            size = 1.5) +
  labs(title = 'Population in Asia',
       x = 'Year',
       y = 'Population')
# Add new x and y axis labels, as well as a chart title.
# 
# Create a bar chart of all European countries gdp per capita in 2002
gdp <- gm %>%
  filter(continent == 'Europe',
         year == '2002')

ggplot(data = gdp,
        aes(x = country,
            y = gdpPercap)) +
  geom_bar(stat = 'identity')
# Make the bars transparent and filled with the color blue.
# 
# Create a new data set called the_nineties that only contains years from the 1990s.
# 
# Save this dataset to your repository (use write.csv)
# 
# Add, commit, and push your files to github