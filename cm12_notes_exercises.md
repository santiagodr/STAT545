cm12
================
Santiago David
2017-10-12

``` r
suppressPackageStartupMessages(library(dplyr))
suppressPackageStartupMessages(library(gapminder))
```

More on typeof/class

``` r
typeof("A") #character
```

    ## [1] "character"

``` r
typeof(1) #numeric
```

    ## [1] "double"

``` r
typeof(gapminder)
```

    ## [1] "list"

``` r
typeof(mtcars) #
```

    ## [1] "list"

``` r
typeof(lm) # function
```

    ## [1] "closure"

``` r
typeof(TRUE) #logical (Boolean)
```

    ## [1] "logical"

``` r
typeof(c) #builtin
```

    ## [1] "builtin"

``` r
class("A")
```

    ## [1] "character"

``` r
class(1)
```

    ## [1] "numeric"

``` r
class(gapminder)
```

    ## [1] "tbl_df"     "tbl"        "data.frame"

``` r
class(mtcars)
```

    ## [1] "data.frame"

``` r
class(lm)
```

    ## [1] "function"

``` r
class(c)
```

    ## [1] "function"

We can also create a list

``` r
x <- list(number_of_cats = 1, cat_color = "red")
typeof(x)
```

    ## [1] "list"

``` r
class(x)
```

    ## [1] "list"

Other type is matrix, matrices need the same type of objects, if there are characters, the matrix will force everything to be a character

``` r
my_mat <- matrix(c(1,2,3,4), nrow = 2, byrow = TRUE)
my_mat
```

    ##      [,1] [,2]
    ## [1,]    1    2
    ## [2,]    3    4

looking at singer

``` r
library(singer)
data("singer_locations")
```

change a type of variable in singer\_locations from its type
============================================================

``` r
copy <- singer_locations
str(singer_locations)
```

    ## Classes 'tbl_df', 'tbl' and 'data.frame':    10100 obs. of  14 variables:
    ##  $ track_id          : chr  "TRWICRA128F42368DB" "TRXJANY128F42246FC" "TRIKPCA128F424A553" "TRYEATD128F92F87C9" ...
    ##  $ title             : chr  "The Conversation (Cd)" "Lonely Island" "Here's That Rainy Day" "Rego Park Blues" ...
    ##  $ song_id           : chr  "SOSURTI12A81C22FB8" "SODESQP12A6D4F98EF" "SOQUYQD12A8C131619" "SOEZGRC12AB017F1AC" ...
    ##  $ release           : chr  "Even If It Kills Me" "The Duke Of Earl" "Imprompture" "Still River" ...
    ##  $ artist_id         : chr  "ARACDPV1187FB58DF4" "ARYBUAO1187FB3F4EB" "AR4111G1187B9B58AB" "ARQDZP31187B98D623" ...
    ##  $ artist_name       : chr  "Motion City Soundtrack" "Gene Chandler" "Paul Horn" "Ronnie Earl & the Broadcasters" ...
    ##  $ year              : int  2007 2004 1998 1995 1968 2006 2003 2007 1966 2006 ...
    ##  $ duration          : num  170 107 528 695 237 ...
    ##  $ artist_hotttnesss : num  0.641 0.394 0.431 0.362 0.411 ...
    ##  $ artist_familiarity: num  0.823 0.57 0.504 0.477 0.53 ...
    ##  $ latitude          : num  NA 41.9 40.7 NA 42.3 ...
    ##  $ longitude         : num  NA -87.6 -74 NA -83 ...
    ##  $ name              : chr  NA "Gene Chandler" "Paul Horn" NA ...
    ##  $ city              : chr  NA "Chicago, IL" "New York, NY" NA ...
    ##  - attr(*, "spec")=List of 2
    ##   ..$ cols   :List of 14
    ##   .. ..$ track_id          : list()
    ##   .. .. ..- attr(*, "class")= chr  "collector_character" "collector"
    ##   .. ..$ title             : list()
    ##   .. .. ..- attr(*, "class")= chr  "collector_character" "collector"
    ##   .. ..$ song_id           : list()
    ##   .. .. ..- attr(*, "class")= chr  "collector_character" "collector"
    ##   .. ..$ release           : list()
    ##   .. .. ..- attr(*, "class")= chr  "collector_character" "collector"
    ##   .. ..$ artist_id         : list()
    ##   .. .. ..- attr(*, "class")= chr  "collector_character" "collector"
    ##   .. ..$ artist_name       : list()
    ##   .. .. ..- attr(*, "class")= chr  "collector_character" "collector"
    ##   .. ..$ year              : list()
    ##   .. .. ..- attr(*, "class")= chr  "collector_integer" "collector"
    ##   .. ..$ duration          : list()
    ##   .. .. ..- attr(*, "class")= chr  "collector_double" "collector"
    ##   .. ..$ artist_hotttnesss : list()
    ##   .. .. ..- attr(*, "class")= chr  "collector_double" "collector"
    ##   .. ..$ artist_familiarity: list()
    ##   .. .. ..- attr(*, "class")= chr  "collector_double" "collector"
    ##   .. ..$ latitude          : list()
    ##   .. .. ..- attr(*, "class")= chr  "collector_double" "collector"
    ##   .. ..$ longitude         : list()
    ##   .. .. ..- attr(*, "class")= chr  "collector_double" "collector"
    ##   .. ..$ name              : list()
    ##   .. .. ..- attr(*, "class")= chr  "collector_character" "collector"
    ##   .. ..$ city              : list()
    ##   .. .. ..- attr(*, "class")= chr  "collector_character" "collector"
    ##   ..$ default: list()
    ##   .. ..- attr(*, "class")= chr  "collector_guess" "collector"
    ##   ..- attr(*, "class")= chr "col_spec"

``` r
as.numeric(copy$track_id[1])
```

    ## Warning: NAs introduced by coercion

    ## [1] NA

``` r
#also
glimpse(copy)
```

    ## Observations: 10,100
    ## Variables: 14
    ## $ track_id           <chr> "TRWICRA128F42368DB", "TRXJANY128F42246FC",...
    ## $ title              <chr> "The Conversation (Cd)", "Lonely Island", "...
    ## $ song_id            <chr> "SOSURTI12A81C22FB8", "SODESQP12A6D4F98EF",...
    ## $ release            <chr> "Even If It Kills Me", "The Duke Of Earl", ...
    ## $ artist_id          <chr> "ARACDPV1187FB58DF4", "ARYBUAO1187FB3F4EB",...
    ## $ artist_name        <chr> "Motion City Soundtrack", "Gene Chandler", ...
    ## $ year               <int> 2007, 2004, 1998, 1995, 1968, 2006, 2003, 2...
    ## $ duration           <dbl> 170.4485, 106.5530, 527.5947, 695.1179, 237...
    ## $ artist_hotttnesss  <dbl> 0.6410183, 0.3937627, 0.4306226, 0.3622792,...
    ## $ artist_familiarity <dbl> 0.8230522, 0.5700167, 0.5039940, 0.4773099,...
    ## $ latitude           <dbl> NA, 41.88415, 40.71455, NA, 42.33168, 40.99...
    ## $ longitude          <dbl> NA, -87.63241, -74.00712, NA, -83.04792, -7...
    ## $ name               <chr> NA, "Gene Chandler", "Paul Horn", NA, "Doro...
    ## $ city               <chr> NA, "Chicago, IL", "New York, NY", NA, "Det...

``` r
#now we change that type
copy[1,8] <- "long"
```

### Factors

``` r
glimpse(gapminder)
```

    ## Observations: 1,704
    ## Variables: 6
    ## $ country   <fctr> Afghanistan, Afghanistan, Afghanistan, Afghanistan,...
    ## $ continent <fctr> Asia, Asia, Asia, Asia, Asia, Asia, Asia, Asia, Asi...
    ## $ year      <int> 1952, 1957, 1962, 1967, 1972, 1977, 1982, 1987, 1992...
    ## $ lifeExp   <dbl> 28.801, 30.332, 31.997, 34.020, 36.088, 38.438, 39.8...
    ## $ pop       <int> 8425333, 9240934, 10267083, 11537966, 13079460, 1488...
    ## $ gdpPercap <dbl> 779.4453, 820.8530, 853.1007, 836.1971, 739.9811, 78...

Factor is a tabular way of looking at strings??, there is a relationship between a number and a level, so what it means for that number

Library to inspect factors

``` r
#install.packages("forcats")
library(forcats)
library(singer)
```

lets work on singer database

``` r
data("singer_locations")
glimpse(singer_locations)
```

    ## Observations: 10,100
    ## Variables: 14
    ## $ track_id           <chr> "TRWICRA128F42368DB", "TRXJANY128F42246FC",...
    ## $ title              <chr> "The Conversation (Cd)", "Lonely Island", "...
    ## $ song_id            <chr> "SOSURTI12A81C22FB8", "SODESQP12A6D4F98EF",...
    ## $ release            <chr> "Even If It Kills Me", "The Duke Of Earl", ...
    ## $ artist_id          <chr> "ARACDPV1187FB58DF4", "ARYBUAO1187FB3F4EB",...
    ## $ artist_name        <chr> "Motion City Soundtrack", "Gene Chandler", ...
    ## $ year               <int> 2007, 2004, 1998, 1995, 1968, 2006, 2003, 2...
    ## $ duration           <dbl> 170.4485, 106.5530, 527.5947, 695.1179, 237...
    ## $ artist_hotttnesss  <dbl> 0.6410183, 0.3937627, 0.4306226, 0.3622792,...
    ## $ artist_familiarity <dbl> 0.8230522, 0.5700167, 0.5039940, 0.4773099,...
    ## $ latitude           <dbl> NA, 41.88415, 40.71455, NA, 42.33168, 40.99...
    ## $ longitude          <dbl> NA, -87.63241, -74.00712, NA, -83.04792, -7...
    ## $ name               <chr> NA, "Gene Chandler", "Paul Horn", NA, "Doro...
    ## $ city               <chr> NA, "Chicago, IL", "New York, NY", NA, "Det...

Transforming into a factor

``` r
sl <- singer_locations %>% 
  mutate(artist_factor =  as_factor(artist_name))
glimpse(sl)
```

    ## Observations: 10,100
    ## Variables: 15
    ## $ track_id           <chr> "TRWICRA128F42368DB", "TRXJANY128F42246FC",...
    ## $ title              <chr> "The Conversation (Cd)", "Lonely Island", "...
    ## $ song_id            <chr> "SOSURTI12A81C22FB8", "SODESQP12A6D4F98EF",...
    ## $ release            <chr> "Even If It Kills Me", "The Duke Of Earl", ...
    ## $ artist_id          <chr> "ARACDPV1187FB58DF4", "ARYBUAO1187FB3F4EB",...
    ## $ artist_name        <chr> "Motion City Soundtrack", "Gene Chandler", ...
    ## $ year               <int> 2007, 2004, 1998, 1995, 1968, 2006, 2003, 2...
    ## $ duration           <dbl> 170.4485, 106.5530, 527.5947, 695.1179, 237...
    ## $ artist_hotttnesss  <dbl> 0.6410183, 0.3937627, 0.4306226, 0.3622792,...
    ## $ artist_familiarity <dbl> 0.8230522, 0.5700167, 0.5039940, 0.4773099,...
    ## $ latitude           <dbl> NA, 41.88415, 40.71455, NA, 42.33168, 40.99...
    ## $ longitude          <dbl> NA, -87.63241, -74.00712, NA, -83.04792, -7...
    ## $ name               <chr> NA, "Gene Chandler", "Paul Horn", NA, "Doro...
    ## $ city               <chr> NA, "Chicago, IL", "New York, NY", NA, "Det...
    ## $ artist_factor      <fctr> Motion City Soundtrack, Gene Chandler, Pau...

we can also do it using base R

``` r
sl <- sl %>% 
  mutate(artist_factor_base = factor(artist_name))
glimpse(sl)
```

    ## Observations: 10,100
    ## Variables: 16
    ## $ track_id           <chr> "TRWICRA128F42368DB", "TRXJANY128F42246FC",...
    ## $ title              <chr> "The Conversation (Cd)", "Lonely Island", "...
    ## $ song_id            <chr> "SOSURTI12A81C22FB8", "SODESQP12A6D4F98EF",...
    ## $ release            <chr> "Even If It Kills Me", "The Duke Of Earl", ...
    ## $ artist_id          <chr> "ARACDPV1187FB58DF4", "ARYBUAO1187FB3F4EB",...
    ## $ artist_name        <chr> "Motion City Soundtrack", "Gene Chandler", ...
    ## $ year               <int> 2007, 2004, 1998, 1995, 1968, 2006, 2003, 2...
    ## $ duration           <dbl> 170.4485, 106.5530, 527.5947, 695.1179, 237...
    ## $ artist_hotttnesss  <dbl> 0.6410183, 0.3937627, 0.4306226, 0.3622792,...
    ## $ artist_familiarity <dbl> 0.8230522, 0.5700167, 0.5039940, 0.4773099,...
    ## $ latitude           <dbl> NA, 41.88415, 40.71455, NA, 42.33168, 40.99...
    ## $ longitude          <dbl> NA, -87.63241, -74.00712, NA, -83.04792, -7...
    ## $ name               <chr> NA, "Gene Chandler", "Paul Horn", NA, "Doro...
    ## $ city               <chr> NA, "Chicago, IL", "New York, NY", NA, "Det...
    ## $ artist_factor      <fctr> Motion City Soundtrack, Gene Chandler, Pau...
    ## $ artist_factor_base <fctr> Motion City Soundtrack, Gene Chandler, Pau...

``` r
x <- c("a", "b", "c")
as_factor(x)
```

    ## [1] a b c
    ## Levels: a b c

``` r
factor(x)
```

    ## [1] a b c
    ## Levels: a b c

When we use base R to asign factor levels, R will do it alphabetically, which might not be what we need, `as_factor` on the other hand maintains the order we have.

Now, we can start playing with the factors

``` r
sl %>% 
  mutate(top_an = fct_lump(artist_factor, n = 10)) %>%  #lumping function to have one group of other
  count(top_an) %>%
  arrange(-n)
```

    ## # A tibble: 35 x 2
    ##             top_an     n
    ##             <fctr> <int>
    ##  1           Other  9918
    ##  2              U2     8
    ##  3 The Boo Radleys     8
    ##  4   Sonny Rollins     6
    ##  5    Jimi Hendrix     6
    ##  6       Pearl Jam     6
    ##  7    Floyd Cramer     6
    ##  8 Jerry Goldsmith     6
    ##  9  Phantom Planet     6
    ## 10       Meshuggah     5
    ## # ... with 25 more rows

### Homework: plot mean duration by artist with and without lumping

``` r
#summarise(mean_duration = mean(duration)) %>% 
  #ggplot(aes(x = artist_name, ....))
```

### now we can use cities

``` r
sl <- sl %>% 
  mutate(city_factor = as.factor(city))
glimpse(sl)
```

    ## Observations: 10,100
    ## Variables: 17
    ## $ track_id           <chr> "TRWICRA128F42368DB", "TRXJANY128F42246FC",...
    ## $ title              <chr> "The Conversation (Cd)", "Lonely Island", "...
    ## $ song_id            <chr> "SOSURTI12A81C22FB8", "SODESQP12A6D4F98EF",...
    ## $ release            <chr> "Even If It Kills Me", "The Duke Of Earl", ...
    ## $ artist_id          <chr> "ARACDPV1187FB58DF4", "ARYBUAO1187FB3F4EB",...
    ## $ artist_name        <chr> "Motion City Soundtrack", "Gene Chandler", ...
    ## $ year               <int> 2007, 2004, 1998, 1995, 1968, 2006, 2003, 2...
    ## $ duration           <dbl> 170.4485, 106.5530, 527.5947, 695.1179, 237...
    ## $ artist_hotttnesss  <dbl> 0.6410183, 0.3937627, 0.4306226, 0.3622792,...
    ## $ artist_familiarity <dbl> 0.8230522, 0.5700167, 0.5039940, 0.4773099,...
    ## $ latitude           <dbl> NA, 41.88415, 40.71455, NA, 42.33168, 40.99...
    ## $ longitude          <dbl> NA, -87.63241, -74.00712, NA, -83.04792, -7...
    ## $ name               <chr> NA, "Gene Chandler", "Paul Horn", NA, "Doro...
    ## $ city               <chr> NA, "Chicago, IL", "New York, NY", NA, "Det...
    ## $ artist_factor      <fctr> Motion City Soundtrack, Gene Chandler, Pau...
    ## $ artist_factor_base <fctr> Motion City Soundtrack, Gene Chandler, Pau...
    ## $ city_factor        <fctr> NA, Chicago, IL, New York, NY, NA, Detroit...

In case there are NA's conflicting the levels, we can use `ifelse` to name those missing info

``` r
sl <- sl %>% 
  mutate(city_factor = ifelse(is.na(city),
                              "Missing information", 
                              city),
  city_factor = as_factor(city_factor))
```

Now, we look

``` r
sl %>% 
  mutate(top_cities = fct_lump(city_factor, n = 7)) %>% 
  count(top_cities)
```

    ## # A tibble: 8 x 2
    ##            top_cities     n
    ##                <fctr> <int>
    ## 1 Missing information  5971
    ## 2         Chicago, IL    55
    ## 3        New York, NY    99
    ## 4     Los Angeles, CA   108
    ## 5     California - LA    61
    ## 6     London, England   130
    ## 7  NY - New York City    63
    ## 8               Other  3613

### homework challenge

use `forcats` to clean up the city stuff. So, basically rename factors forcats::as\_factors

### Reading and writing to file

`read_csv` which is different than `read.csv`, and apparently make the process easier by identifying the variables better

`readxl` is another useful function

``` r
#install.packages("readxl")
```

`readxl::read_xlsx()` directly takes that file form excel

`write_csv` do the opposite, write the file
