class Movie < ActiveRecord::Base

  def self.party
    search_url = "http://api.rottentomatoes.com/api/public/v1.0/lists/movies/in_theaters.json?page_limit=16&page=1&country=us&apikey=cb2px8nd3bugrpdpd2h2quh7"
    response = HTTParty.get search_url
    #binding.pry
  end
end
