Argentina<- artists_paris_split_geocoded_1 %>% 
  filter(nationality_1 == "Argentina")

Bolivia<- artists_paris_split_geocoded_1 %>% 
  filter(nationality_1 == "Bolivia")

Brazil<- artists_paris_split_geocoded_1 %>% 
  filter(nationality_1 == "Brazil")

Chile<- artists_paris_split_geocoded_1 %>% 
  filter(nationality_1 == "Chile")

Colombia<- artists_paris_split_geocoded_1 %>% 
  filter(nationality_1 == "Colombia")

Costa_Rica<- artists_paris_split_geocoded_1 %>% 
  filter(nationality_1 == "Costa Rica")

cuba<- artists_paris_split_geocoded_1 %>% 
  filter(nationality_1 == "Cuba")

Dominican_Republic<- artists_paris_split_geocoded_1 %>% 
  filter(nationality_1 == "Dominican Republic")

Ecuador<- artists_paris_split_geocoded_1 %>% 
  filter(nationality_1 == "Ecuador")

El_Salvador<- artists_paris_split_geocoded_1 %>% 
  filter(nationality_1 == "El Salvador")

Guatemala<- artists_paris_split_geocoded_1 %>% 
  filter(nationality_1 == "Guatemala")

Honduras<- artists_paris_split_geocoded_1 %>% 
  filter(nationality_1 == "Honduras")

Mexico<- artists_paris_split_geocoded_1 %>% 
  filter(nationality_1 == "Mexico")

Paraguay<- artists_paris_split_geocoded_1 %>% 
  filter(nationality_1 == "Paraguay")

Peru<- artists_paris_split_geocoded_1 %>% 
  filter(nationality_1 == "Peru")

Uruguay<- artists_paris_split_geocoded_1 %>% 
  filter(nationality_1 == "Uruguay")

Venezuela<- artists_paris_split_geocoded_1 %>% 
  filter(nationality_1 == "Venezuela")

leaflet() %>% 
  addProviderTiles("Esri.WorldImagery") %>% 
  addMarkers(data = Argentina,
             lng = ~lon,
             lat = ~lat,
             clusterOptions = markerClusterOptions(),
             label = ~Name,
             group = "Argentina",
             popup = ~str_c("<h2>", Name, "</h2>", 
                            "<b> Address: </b>", address,"<br>",
                            "<b> Nationality: </b>", nationality_1,"<br>",
                            "<b> Dates in Paris: </b>", dates_in_paris, "<br>")) %>% 
  addMarkers(data = Bolivia,
             lng = ~lon,
             lat = ~lat,
             clusterOptions = markerClusterOptions(),
             label = ~Name,
             group = "Bolivia",
             popup = ~str_c("<h2>", Name, "</h2>", 
                            "<b> Address: </b>", address,"<br>",
                            "<b> Nationality: </b>", nationality_1,"<br>",
                            "<b> Dates in Paris: </b>", dates_in_paris, "<br>")) %>% 
  addMarkers(data = Brazil,
             lng = ~lon,
             lat = ~lat,
             clusterOptions = markerClusterOptions(),
             label = ~Name,
             group = "Brazil",
             popup = ~str_c("<h2>", Name, "</h2>", 
                            "<b> Address: </b>", address,"<br>",
                            "<b> Nationality: </b>", nationality_1,"<br>",
                            "<b> Dates in Paris: </b>", dates_in_paris, "<br>")) %>% 
  addMarkers(data = Chile,
             lng = ~lon,
             lat = ~lat,
             clusterOptions = markerClusterOptions(),
             label = ~Name,
             group = "Chile",
             popup = ~str_c("<h2>", Name, "</h2>", 
                            "<b> Address: </b>", address,"<br>",
                            "<b> Nationality: </b>", nationality_1,"<br>",
                            "<b> Dates in Paris: </b>", dates_in_paris, "<br>")) %>% 
  addMarkers(data = Colombia,
             lng = ~lon,
             lat = ~lat,
             clusterOptions = markerClusterOptions(),
             label = ~Name,
             group = "Colombia",
             popup = ~str_c("<h2>", Name, "</h2>", 
                            "<b> Address: </b>", address,"<br>",
                            "<b> Nationality: </b>", nationality_1,"<br>",
                            "<b> Dates in Paris: </b>", dates_in_paris, "<br>")) %>% 
  addMarkers(data = Costa_Rica,
             lng = ~lon,
             lat = ~lat,
             clusterOptions = markerClusterOptions(),
             label = ~Name,
             group = "Costa Rica",
             popup = ~str_c("<h2>", Name, "</h2>", 
                            "<b> Address: </b>", address,"<br>",
                            "<b> Nationality: </b>", nationality_1,"<br>",
                            "<b> Dates in Paris: </b>", dates_in_paris, "<br>")) %>%
  addMarkers(data = cuba,
             lng = ~lon,
             lat = ~lat,
             clusterOptions = markerClusterOptions(),
             label = ~Name,
             group = "Cuba",
             popup = ~str_c("<h2>", Name, "</h2>", 
                            "<b> Address: </b>", address,"<br>",
                            "<b> Nationality: </b>", nationality_1,"<br>",
                            "<b> Dates in Paris: </b>", dates_in_paris, "<br>")) %>% 
  addMarkers(data = Dominican_Republic,
             lng = ~lon,
             lat = ~lat,
             clusterOptions = markerClusterOptions(),
             label = ~Name,
             group = "Dominican Republic",
             popup = ~str_c("<h2>", Name, "</h2>", 
                            "<b> Address: </b>", address,"<br>",
                            "<b> Nationality: </b>", nationality_1,"<br>",
                            "<b> Dates in Paris: </b>", dates_in_paris, "<br>")) %>% 
  addMarkers(data = Ecuador,
             lng = ~lon,
             lat = ~lat,
             clusterOptions = markerClusterOptions(),
             label = ~Name,
             group = "Ecuador",
             popup = ~str_c("<h2>", Name, "</h2>", 
                            "<b> Address: </b>", address,"<br>",
                            "<b> Nationality: </b>", nationality_1,"<br>",
                            "<b> Dates in Paris: </b>", dates_in_paris, "<br>")) %>% 
  addMarkers(data = El_Salvador,
             lng = ~lon,
             lat = ~lat,
             clusterOptions = markerClusterOptions(),
             label = ~Name,
             group = "El Salvador",
             popup = ~str_c("<h2>", Name, "</h2>", 
                            "<b> Address: </b>", address,"<br>",
                            "<b> Nationality: </b>", nationality_1,"<br>",
                            "<b> Dates in Paris: </b>", dates_in_paris, "<br>")) %>%
  addMarkers(data = Guatemala,
             lng = ~lon,
             lat = ~lat,
             clusterOptions = markerClusterOptions(),
             label = ~Name,
             group = "Guatemala",
             popup = ~str_c("<h2>", Name, "</h2>", 
                            "<b> Address: </b>", address,"<br>",
                            "<b> Nationality: </b>", nationality_1,"<br>",
                            "<b> Dates in Paris: </b>", dates_in_paris, "<br>")) %>% 
  addMarkers(data = Honduras,
             lng = ~lon,
             lat = ~lat,
             clusterOptions = markerClusterOptions(),
             label = ~Name,
             group = "Honduras",
             popup = ~str_c("<h2>", Name, "</h2>", 
                            "<b> Address: </b>", address,"<br>",
                            "<b> Nationality: </b>", nationality_1,"<br>",
                            "<b> Dates in Paris: </b>", dates_in_paris, "<br>")) %>% 
  addMarkers(data = Mexico,
             lng = ~lon,
             lat = ~lat,
             clusterOptions = markerClusterOptions(),
             label = ~Name,
             group = "Mexico",
             popup = ~str_c("<h2>", Name, "</h2>", 
                            "<b> Address: </b>", address,"<br>",
                            "<b> Nationality: </b>", nationality_1,"<br>",
                            "<b> Dates in Paris: </b>", dates_in_paris, "<br>")) %>% 
  addMarkers(data = Paraguay,
             lng = ~lon,
             lat = ~lat,
             clusterOptions = markerClusterOptions(),
             label = ~Name,
             group = "Paraguay",
             popup = ~str_c("<h2>", Name, "</h2>", 
                            "<b> Address: </b>", address,"<br>",
                            "<b> Nationality: </b>", nationality_1,"<br>",
                            "<b> Dates in Paris: </b>", dates_in_paris, "<br>")) %>% 
  addMarkers(data = Peru,
             lng = ~lon,
             lat = ~lat,
             clusterOptions = markerClusterOptions(),
             label = ~Name,
             group = "Peru",
             popup = ~str_c("<h2>", Name, "</h2>", 
                            "<b> Address: </b>", address,"<br>",
                            "<b> Nationality: </b>", nationality_1,"<br>",
                            "<b> Dates in Paris: </b>", dates_in_paris, "<br>")) %>% 
  addMarkers(data = Peru,
             lng = ~lon,
             lat = ~lat,
             clusterOptions = markerClusterOptions(),
             label = ~Name,
             group = "Peru",
             popup = ~str_c("<h2>", Name, "</h2>", 
                            "<b> Address: </b>", address,"<br>",
                            "<b> Nationality: </b>", nationality_1,"<br>",
                            "<b> Dates in Paris: </b>", dates_in_paris, "<br>")) %>% 
  addMarkers(data = Uruguay,
             lng = ~lon,
             lat = ~lat,
             clusterOptions = markerClusterOptions(),
             label = ~Name,
             group = "Uruguay",
             popup = ~str_c("<h2>", Name, "</h2>", 
                            "<b> Address: </b>", address,"<br>",
                            "<b> Nationality: </b>", nationality_1,"<br>",
                            "<b> Dates in Paris: </b>", dates_in_paris, "<br>")) %>% 
  addMarkers(data = Venezuela,
             lng = ~lon,
             lat = ~lat,
             clusterOptions = markerClusterOptions(),
             label = ~Name,
             group = "Venezuela",
             popup = ~str_c("<h2>", Name, "</h2>", 
                            "<b> Address: </b>", address,"<br>",
                            "<b> Nationality: </b>", nationality_1,"<br>",
                            "<b> Dates in Paris: </b>", dates_in_paris, "<br>")) %>% 
  addLayersControl(
    baseGroups = c("Argentina", "Bolivia", "Brazil", "Chile", "Colombia", "Costa Rica", "Cuba","Dominican Republic", "Ecuador",
                      "El Salvador", "Guatemala", "Honduras", "Mexico", "Paraguay", "Peru","Uruguay","Venezuela"),
    options = layersControlOptions(collapsed = TRUE))
  
  
  