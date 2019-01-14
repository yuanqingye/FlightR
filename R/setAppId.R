setAppId <-
function(){
  input = readline(prompt="Enter your FlightStats appID: ")
  Sys.setenv(flightstats_app_id = input)
}
