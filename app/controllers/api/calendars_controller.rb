class Api::CalendarsController < ApplicationController
  def index
    @calendar = HTTP.get("https://calendarific.com/api/v2/holidays?&api_key=#{Rails.application.credentials.calendars_api[:api_key]}&country=US&year=2019").parse["response"]["holidays"]
    render "index.json.jb" 
  end

  # def index
  #   @calendar = HTTP.headers("X-Api-Key" => Rails.application.credentials.calendars_api[:api_key]).get("https://calendarific.com/api/v2/holidays?&country=US&year=2019").parse["response"]["holidays"]
  #   render "index.json.jb"
  # end

end