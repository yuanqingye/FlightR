listAirlines <-
function(activeOnly=TRUE){
  ID = Sys.getenv("flightstats_app_id") 
  if (ID == ""){
    stop("Please set your FlightStats AppID and API Key with the setAPIKey() and setAppId() function. You can obtain these from https://developer.flightstats.com.")
  }
  KEY = Sys.getenv("flightstats_api_key")
  if (ID == ""){
    stop("Please set your FlightStats AppID and API Key with the setAPIKey() and setAppId() function. You can obtain these from https://developer.flightstats.com.")
  }  
  if(missing(activeOnly)){
    choice = "active"
  }
  if(activeOnly == FALSE) {
    choice = "all"
  } 
  else {
    choice = "active"
  }
  link = paste0("https://api.flightstats.com/flex/airlines/rest/v1/json/",choice,"?appId=",ID,"&appKey=",KEY)
  dat = getURL(link)
  dat_list <- fromJSON(dat)
  airlines <- dat_list$airlines
  return(airlines)
}
