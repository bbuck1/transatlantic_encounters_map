```library(tidyverse)

library(historydata)

library(leaflet)



leaflet(paulist_missions) %>% 
  
  addTiles() %>% 
  
  addCircleMarkers(label = ~church,
                   
                   popup = ~str_c("<h3>", church, "</h3>",
                                  
                                  city, ", ", state, "<br>"))``` 



```leaflet(paulist_missions) %>% 
  
  addTiles() %>% 
  
  addCircleMarkers(label = ~church,
                   
                   popup = ~str_c("<h4>", church, "</h4>",
                                  
                                  city, ", ", state, "<br>",
                                  
                                  "Converts: ", converts, "<br>", 
                                  
                                  "<a href='", url, "'>Link to gallery</a><br>"))``` 