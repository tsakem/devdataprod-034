FC Barcelona game results
========================================================
author: Aimilia Tsakiri  
date: 18 November 2015  
**2015-2016 Spanish League** 

*This presentation is created for the Course Project in Developing Data Products Course which is part of Coursera Data Science Specialization*

App Description
========================================================
transition-speed: fast
Application link: [Click HERE](https://tsakem.shinyapps.io/CourseProject)

This app is created exclusively for **FC Barcelona fans**! :)  
It allows them to see the goals Barcelona has scored in home and away matches,
as well as the result of each game! 

## Technology used
The application has been created in R using Sniny package and is hosted in shinyapps.io site.  
  

App Characteristics 1/2
========================================================
transition: rotate 
- **Dynamic feed** of the game results (www.football-data.co.uk)  


```r
library(RCurl)
theURL <- getURL("http://www.football-data.co.uk/mmz4281/1516/SP1.csv")
thedata <- read.csv(text = theURL)
dim(thedata)
```

```
[1] 110  61
```
  
*Total matches of all teams played in 2015 Spanish League up to now:* **110**   
*More details about the 61 variables of the dataset can be found*  **[here](http://www.football-data.co.uk/notes.txt)**

App Characteristics 2/2
========================================================
  ![alt text](https://upload.wikimedia.org/wikipedia/en/thumb/4/47/FC_Barcelona_%28crest%29.svg/473px-FC_Barcelona_%28crest%29.svg.png) 
  
***
   
- Enables fans to see **separately** home and away matches
- Enables fans to see **productivity** of the team (goals scored)
- Shows in a **graph** the results   

*Logo image: Wikipedia https://upload.wikimedia.org/wikipedia/en/thumb/4/47/FC_Barcelona_%28crest%29.svg/473px-FC_Barcelona_%28crest%29.svg.png*


Working App Preview
========================================================
<iframe width="1000" height="500" src="https://tsakem.shinyapps.io/CourseProject" frameborder="0" allowfullscreen></iframe>


