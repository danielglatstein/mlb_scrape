require 'nokogiri'
require 'open-uri'
require 'pry'
require 'json'

def game_events
  open("http://gd2.mlb.com/components/game/mlb/year_2015/month_06/day_30/gid_2015_06_30_bosmlb_tormlb_1/game_events.json").read
  #open("http://gd2.mlb.com/components/game/mlb/year_2015/month_#{month}/day_#{day}/gid_#{year}_#{month}_#{day}_#{away}mlb_#{home}mlb_1/game_events.json").read
end

def json_game_events
  JSON.parse(game_events)
end

def away_innings
  json_game_events["data"]["game"]["inning"].each_with_object([]) do |(inning), away_plays|
    atbats = inning["top"]["atbat"]
    atbats.each do |atbat|
        away_plays << atbat
    end
  away_plays
  end
end

def home_innings
  json_game_events["data"]["game"]["inning"].each_with_object([]) do |(inning), home_plays|
    atbats = inning["bottom"]["atbat"]
    atbats.each do |atbat|
        home_plays << atbat
    end
  home_plays
  end
end

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
