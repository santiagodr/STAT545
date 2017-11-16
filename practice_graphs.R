### Practice graphs for HW07 STAT545
### failed graphs but good ideas
# maybe useful in the future for something

bird_diet <- bird_data %>% 
  select(Scientific, `Diet-Inv`:`Diet-PlantO`) %>% 
  gather(diet_types, percentage_use, `Diet-Inv`:`Diet-PlantO`)

ggplot(bird_diet, aes(percentage_use)) + 
  scale_fill_brewer(palette = "Spectral") +
  geom_histogram(aes(fill = diet_types),
                 binwidth = 5,
                 col = "black",
                 size = .5) +
  labs(x = "Percentage of use", y = "Number of species") +
  theme_classic()
