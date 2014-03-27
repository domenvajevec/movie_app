class Movie < ActiveRecord::Base

  def self.party
    search_url = "http://api.rottentomatoes.com/api/public/v1.0/lists/movies/in_theaters.json?page_limit=16&page=1&country=us&apikey=#{ENV["ROTTEN_KEY"]}"
    # binding.pry
    response = HTTParty.get search_url
  end
end
