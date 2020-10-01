class Api::HolidaysController < ApplicationController
  def index
    @holidays = HTTP.headers("Authorization" => "Bearer #{Rails.application.credentials.holidays_api[:api_key]}").get("https://holidayapi.com/v1/holidays").parse
    render "index.json.jb"
  end
end
