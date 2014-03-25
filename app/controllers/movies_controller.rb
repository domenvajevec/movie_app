class MoviesController < ApplicationController
  def index
    movie_list = JSON.parse(Movie.party)
    @movies = movie_list["movies"].sort_by {|movie| movie["ratings"]["critics_score"]}.reverse
  end
end
