library(tidyverse)
library(ggmap)
library(leaflet)

galleries<- read.csv("Maps backup.csv", stringsAsFactors = FALSE, encoding = "UTF-8")
artists<- read.csv("Artists in Paris (Beth update 8-25-12).csv", stringsAsFactors = FALSE)

register_google(key = "AIzaSyCkS62yIsjBXByaErdLpbdpWv4OtzOxZuE")

galleries_addy<- distinct(galleries, Address)

galleries_addy_df<- as.data.frame(galleries_addy)

galleries_addy_loc<- mutate_geocode(galleries_addy_df, Address)

Maps_backup_geo_coded <- galleries_cords %>% 
  left_join(galleries, by = "Address")

write_csv(Maps_backup_geo_coded, "Maps_backup_geo_coded.csv")

leaflet() %>% 
  addProviderTiles("Esri.WorldImagery") %>% 
  addCircleMarkers(data = Maps_backup_geo_coded,
             lng = ~lon,
             lat = ~lat,
             color = "red",
             label = ~Name,
             popup = ~str_c("<h2>", Name, "</h2>", 
                            "<b> Address: </b>", Address, "<br>",
                            "<a href='", gallery_page, "'>Link to Gallery</a><br>"))

artists_paris_split<- Artists_in_Paris_Beth_update_8_25_12_ %>%
  mutate(address = str_split(address, ";")) %>% unnest()


artists_paris<- distinct(artists_addresses, address) %>% 
  drop_na(address)

artists_paris<- as.data.frame(artists_paris)

artists_paris<- mutate_geocode(artists_paris, address)

write_csv(artists_paris_split_geocoded, "artists_paris_split_geocoded_1.csv")

artists_paris_split_geocoded<- artists_paris_split %>% 
  left_join(artists_paris_Copy, by = "address")


leaflet() %>% 
  addProviderTiles("Esri.WorldImagery") %>% 
  addCircleMarkers(data = artists_paris_split_geocoded,
                   lng = ~lon,
                   lat = ~lat,
                   color = "blue",
                   label = ~Name,
                   popup = ~str_c("<h2>", Name, "</h2>", 
                                  "<b> Address: </b>", address))

leaflet() %>% 
  addProviderTiles("Esri.WorldImagery") %>% 
  addMarkers(data = artists_paris_split_geocoded_1,
                   lng = ~lon,
                   lat = ~lat,
                   clusterOptions = markerClusterOptions(),
             label = ~Name,
             popup = ~str_c("<h2>", Name, "</h2>", 
                            "<b> Address: </b>", address,"<br>",
                            "<b> Nationality: </b>", nationality_1,"<br>",
                            "<b> Dates in Paris: </b>", dates_in_paris, "<br>"))

Nationality<- artists_paris_split_geocoded_1 %>% 
  group_by(nationality_1) %>% 
  summarize(no= n())
