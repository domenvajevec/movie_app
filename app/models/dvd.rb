class Dvd < ActiveRecord::Base
  def self.party
    search_url = "http://api.rottentomatoes.com/api/public/v1.0/lists/dvds/new_releases.json?page_limit=16&page=1&country=us&apikey=#{ENV["ROTTEN_KEY"]}"
    response = HTTParty.get search_url
    #binding.pry
  end
end
