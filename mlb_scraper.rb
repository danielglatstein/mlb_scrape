require 'nokogiri'
require 'open-uri'
require 'pry'
require 'json'

def game_events
  open("http://gd2.mlb.com/components/game/mlb/year_2015/month_06/day_30/gid_2015_06_30_bosmlb_tormlb_1/game_events.json").read
  #open("http://gd2.mlb.com/components/game/mlb/year_2015/#{"month"}/#{day}/gid_#{year}_#{month}_#{day}_#{away}mlb_#{home}mlb_1/game_events.json").read
end

def json_game_events
  JSON.parse(game_events)
end

def innings
  json_game_events["data"]["game"]["inning"].each_with_object([]) do |(keys), all_innings|
    #ultimately I to return an array with objects [1 top, 1 bottom, 2 top, etc...]
    #then in another
    binding.pry
  end
end

innings

# def players_events(player)
#   #create an empty array to store all the players events
#   #iterate thru (all_plays) and if the value == player add that play to players array
# end

# def all_plays
#   #saves all plays in an array
# end

# def highest_velocity
#   #iterate thru all_plays and return the fastest pitch using .max_by
# end

# def scoring_plays
#   #iterate thru (all_plays) and if the score changed from the previous one return that play
# end

# def month(number)
#   #takes an input of a number 1-10
# end

# def day(number)
#   #takes an input of a number 1-30
# end

# def teams(home, away)
#   #accepts valid inputs of names
# end

# def team_dictionary
#   #translates inputs to make correct abbreviation, should also be able to work for city, name first, name last, etc
# end

# def year(number)
#   #takes input of year
# end

# "#LeaderBoard1_dg1 .rgMasterTable .rgPager .rgHeader"
#so you start by going thru index with nokogiri and then find ur way to the json doc
#6/30 








# require "net/http"
# require "uri"

# uri = URI.parse("put_in_Http::for ")

# # Shortcut
# response = Net::HTTP.get_response(uri)

# # Will print response.body
# Net::HTTP.get_print(uri)

# # Full
# http = Net::HTTP.new(uri.host, uri.port)
# response = http.request(Net::HTTP::Get.new(uri.request_uri)) 