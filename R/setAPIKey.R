setAPIKey <-
function(){
  input = readline(prompt="Enter your FlightStats API Key: ")
  Sys.setenv(flightstats_api_key = input) # this is a more simple way of storing API keys, it saves it in the .Rprofile file, however this is only temporary - meaning next session the login details will have to be provided again. See below how to store login details in a more durable way.
}
